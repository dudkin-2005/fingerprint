.class final Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisplayModeRecord"
.end annotation


# instance fields
.field public final mMode:Landroid/view/Display$Mode;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V
    .registers 5
    .param p1, "phys"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iget v1, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    iget v2, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 726
    return-void
.end method


# virtual methods
.method public hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z
    .registers 6
    .param p1, "info"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .line 736
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 737
    .local v0, "modeRefreshRate":I
    iget v1, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 738
    .local v1, "displayInfoRefreshRate":I
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    iget v3, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    if-ne v2, v3, :cond_28

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 739
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    iget v3, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    if-ne v2, v3, :cond_28

    if-ne v0, v1, :cond_28

    const/4 v2, 0x1

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    .line 738
    :goto_29
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayModeRecord{mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
