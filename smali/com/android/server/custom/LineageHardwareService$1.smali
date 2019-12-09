.class Lcom/android/server/custom/LineageHardwareService$1;
.super Lcom/android/internal/custom/hardware/ILineageHardwareService$Stub;
.source "LineageHardwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/custom/LineageHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/custom/LineageHardwareService;


# direct methods
.method constructor <init>(Lcom/android/server/custom/LineageHardwareService;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-direct {p0}, Lcom/android/internal/custom/hardware/ILineageHardwareService$Stub;-><init>()V

    return-void
.end method

.method private isSupported(I)Z
    .locals 1

    .line 358
    invoke-virtual {p0}, Lcom/android/server/custom/LineageHardwareService$1;->getSupportedFeatures()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public get(I)Z
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$000(Lcom/android/server/custom/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-direct {p0, p1}, Lcom/android/server/custom/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    invoke-static {}, Lcom/android/server/custom/LineageHardwareService;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 p1, 0x0

    return p1

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$200(Lcom/android/server/custom/LineageHardwareService;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;->get(I)Z

    move-result p1

    return p1
.end method

.method public getColorBalance()I
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$000(Lcom/android/server/custom/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/android/server/custom/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$200(Lcom/android/server/custom/LineageHardwareService;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;->getColorBalance()I

    move-result v0

    return v0

    .line 509
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColorBalanceMax()I
    .locals 3

    .line 494
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$000(Lcom/android/server/custom/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/android/server/custom/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$200(Lcom/android/server/custom/LineageHardwareService;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;->getColorBalanceMax()I

    move-result v0

    return v0

    .line 499
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColorBalanceMin()I
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$000(Lcom/android/server/custom/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/android/server/custom/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$200(Lcom/android/server/custom/LineageHardwareService;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;->getColorBalanceMin()I

    move-result v0

    return v0

    .line 489
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentDisplayMode()Lcom/android/internal/custom/hardware/DisplayMode;
    .locals 3

    .line 451
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$000(Lcom/android/server/custom/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/android/server/custom/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    invoke-static {}, Lcom/android/server/custom/LineageHardwareService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Display modes are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-object v2

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$200(Lcom/android/server/custom/LineageHardwareService;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;->getCurrentDisplayMode()Lcom/android/internal/custom/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDisplayMode()Lcom/android/internal/custom/hardware/DisplayMode;
    .locals 3

    .line 462
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$000(Lcom/android/server/custom/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/android/server/custom/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    invoke-static {}, Lcom/android/server/custom/LineageHardwareService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Display modes are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-object v2

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$200(Lcom/android/server/custom/LineageHardwareService;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;->getDefaultDisplayMode()Lcom/android/internal/custom/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPictureAdjustment()Lcom/android/internal/custom/hardware/HSIC;
    .locals 7

    .line 534
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$000(Lcom/android/server/custom/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/android/server/custom/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$200(Lcom/android/server/custom/LineageHardwareService;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;->getDefaultPictureAdjustment()Lcom/android/internal/custom/hardware/HSIC;

    move-result-object v0

    return-object v0

    .line 539
    :cond_0
    new-instance v0, Lcom/android/internal/custom/hardware/HSIC;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/custom/hardware/HSIC;-><init>(FFFFF)V

    return-object v0
.end method

.method public getDisplayColorCalibration()[I
    .locals 3

    .line 392
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$000(Lcom/android/server/custom/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/custom/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    invoke-static {}, Lcom/android/server/custom/LineageHardwareService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Display color calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-object v2

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$200(Lcom/android/server/custom/LineageHardwareService;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;->getDisplayColorCalibration()[I

    move-result-object v0

    return-object v0
.end method

.method public getDisplayModes()[Lcom/android/internal/custom/hardware/DisplayMode;
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$000(Lcom/android/server/custom/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/android/server/custom/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    invoke-static {}, Lcom/android/server/custom/LineageHardwareService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Display modes are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-object v2

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$200(Lcom/android/server/custom/LineageHardwareService;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;->getDisplayModes()[Lcom/android/internal/custom/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getPictureAdjustment()Lcom/android/internal/custom/hardware/HSIC;
    .locals 7

    .line 524
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$000(Lcom/android/server/custom/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/android/server/custom/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$200(Lcom/android/server/custom/LineageHardwareService;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;->getPictureAdjustment()Lcom/android/internal/custom/hardware/HSIC;

    move-result-object v0

    return-object v0

    .line 529
    :cond_0
    new-instance v0, Lcom/android/internal/custom/hardware/HSIC;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/custom/hardware/HSIC;-><init>(FFFFF)V

    return-object v0
.end method

.method public getPictureAdjustmentRanges()[F
    .locals 6

    .line 554
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$000(Lcom/android/server/custom/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/android/server/custom/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$200(Lcom/android/server/custom/LineageHardwareService;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;->getPictureAdjustmentRanges()Ljava/util/List;

    move-result-object v0

    .line 558
    new-array v1, v1, [F

    .line 559
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 560
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v4, 0x2

    aput v2, v1, v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x3

    aput v2, v1, v3

    .line 561
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v5, 0x4

    aput v2, v1, v5

    const/4 v2, 0x5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v1, v2

    const/4 v2, 0x6

    .line 562
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v1, v2

    const/4 v2, 0x7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    const/16 v2, 0x8

    .line 563
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    const/16 v2, 0x9

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v1, v2

    .line 558
    return-object v1

    .line 565
    :cond_0
    new-array v0, v1, [F

    return-object v0
.end method

.method public getSupportedFeatures()I
    .locals 3

    .line 363
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$000(Lcom/android/server/custom/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$200(Lcom/android/server/custom/LineageHardwareService;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;->getSupportedFeatures()I

    move-result v0

    return v0
.end method

.method public isSunlightEnhancementSelfManaged()Z
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$000(Lcom/android/server/custom/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/custom/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    invoke-static {}, Lcom/android/server/custom/LineageHardwareService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sunlight enhancement is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v0, 0x0

    return v0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$200(Lcom/android/server/custom/LineageHardwareService;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;->isSunlightEnhancementSelfManaged()Z

    move-result v0

    return v0
.end method

.method public requireAdaptiveBacklightForSunlightEnhancement()Z
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$000(Lcom/android/server/custom/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/custom/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    invoke-static {}, Lcom/android/server/custom/LineageHardwareService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sunlight enhancement is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v0, 0x0

    return v0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$200(Lcom/android/server/custom/LineageHardwareService;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;->requireAdaptiveBacklightForSunlightEnhancement()Z

    move-result v0

    return v0
.end method

.method public set(IZ)Z
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$000(Lcom/android/server/custom/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-direct {p0, p1}, Lcom/android/server/custom/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    invoke-static {}, Lcom/android/server/custom/LineageHardwareService;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const/4 p1, 0x0

    return p1

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$200(Lcom/android/server/custom/LineageHardwareService;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;->set(IZ)Z

    move-result p1

    return p1
.end method

.method public setColorBalance(I)Z
    .locals 3

    .line 514
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$000(Lcom/android/server/custom/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/android/server/custom/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$200(Lcom/android/server/custom/LineageHardwareService;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;->setColorBalance(I)Z

    move-result p1

    return p1

    .line 519
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setDisplayColorCalibration([I)Z
    .locals 3

    .line 403
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$000(Lcom/android/server/custom/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/custom/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 406
    invoke-static {}, Lcom/android/server/custom/LineageHardwareService;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Display color calibration is not supported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return v1

    .line 409
    :cond_0
    array-length v0, p1

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 410
    invoke-static {}, Lcom/android/server/custom/LineageHardwareService;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Invalid color calibration"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return v1

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$200(Lcom/android/server/custom/LineageHardwareService;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;->setDisplayColorCalibration([I)Z

    move-result p1

    return p1
.end method

.method public setDisplayMode(Lcom/android/internal/custom/hardware/DisplayMode;Z)Z
    .locals 3

    .line 473
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$000(Lcom/android/server/custom/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/android/server/custom/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    invoke-static {}, Lcom/android/server/custom/LineageHardwareService;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Display modes are not supported"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 p1, 0x0

    return p1

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$200(Lcom/android/server/custom/LineageHardwareService;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;->setDisplayMode(Lcom/android/internal/custom/hardware/DisplayMode;Z)Z

    move-result p1

    return p1
.end method

.method public setPictureAdjustment(Lcom/android/internal/custom/hardware/HSIC;)Z
    .locals 3

    .line 544
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$000(Lcom/android/server/custom/LineageHardwareService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/android/server/custom/LineageHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 547
    iget-object v0, p0, Lcom/android/server/custom/LineageHardwareService$1;->this$0:Lcom/android/server/custom/LineageHardwareService;

    invoke-static {v0}, Lcom/android/server/custom/LineageHardwareService;->access$200(Lcom/android/server/custom/LineageHardwareService;)Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/custom/LineageHardwareService$LineageHardwareInterface;->setPictureAdjustment(Lcom/android/internal/custom/hardware/HSIC;)Z

    move-result p1

    return p1

    .line 549
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
