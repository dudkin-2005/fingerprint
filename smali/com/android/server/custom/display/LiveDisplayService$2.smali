.class Lcom/android/server/custom/display/LiveDisplayService$2;
.super Lcom/android/internal/custom/hardware/ILiveDisplayService$Stub;
.source "LiveDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/custom/display/LiveDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/custom/display/LiveDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/custom/display/LiveDisplayService;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-direct {p0}, Lcom/android/internal/custom/hardware/ILiveDisplayService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 289
    iget-object p1, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {p1}, Lcom/android/server/custom/display/LiveDisplayService;->access$500(Lcom/android/server/custom/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "android.permission.DUMP"

    const-string v0, "LiveDisplay"

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 292
    const-string p1, "LiveDisplay Service State:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {p3}, Lcom/android/server/custom/display/LiveDisplayService;->access$100(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/server/custom/display/LiveDisplayService$State;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/custom/display/LiveDisplayService$State;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mConfig="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {p3}, Lcom/android/server/custom/display/LiveDisplayService;->access$200(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/internal/custom/hardware/LiveDisplayConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/internal/custom/hardware/LiveDisplayConfig;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {p3}, Lcom/android/server/custom/display/LiveDisplayService;->access$000(Lcom/android/server/custom/display/LiveDisplayService;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_0

    .line 297
    iget-object p3, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {p3}, Lcom/android/server/custom/display/LiveDisplayService;->access$000(Lcom/android/server/custom/display/LiveDisplayService;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/custom/display/LiveDisplayFeature;

    invoke-virtual {p3, p2}, Lcom/android/server/custom/display/LiveDisplayFeature;->dump(Ljava/io/PrintWriter;)V

    .line 296
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 299
    :cond_0
    return-void
.end method

.method public getColorAdjustment()[F
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$400(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/server/custom/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/custom/display/DisplayHardwareController;->getColorAdjustment()[F

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/android/internal/custom/hardware/LiveDisplayConfig;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$200(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/internal/custom/hardware/LiveDisplayConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPictureAdjustment()Lcom/android/internal/custom/hardware/HSIC;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$700(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/server/custom/display/PictureAdjustmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/custom/display/PictureAdjustmentController;->getDefaultPictureAdjustment()Lcom/android/internal/custom/hardware/HSIC;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$300(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    return v0
.end method

.method public getPictureAdjustment()Lcom/android/internal/custom/hardware/HSIC;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$700(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/server/custom/display/PictureAdjustmentController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/custom/display/PictureAdjustmentController;->getPictureAdjustment()Lcom/android/internal/custom/hardware/HSIC;

    move-result-object v0

    return-object v0
.end method

.method public isAutoContrastEnabled()Z
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$400(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/server/custom/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/custom/display/DisplayHardwareController;->isAutoContrastEnabled()Z

    move-result v0

    return v0
.end method

.method public isAutomaticOutdoorModeEnabled()Z
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$600(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/server/custom/display/OutdoorModeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/custom/display/OutdoorModeController;->isAutomaticOutdoorModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isCABCEnabled()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$400(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/server/custom/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/custom/display/DisplayHardwareController;->isCABCEnabled()Z

    move-result v0

    return v0
.end method

.method public isColorEnhancementEnabled()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$400(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/server/custom/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/custom/display/DisplayHardwareController;->isColorEnhancementEnabled()Z

    move-result v0

    return v0
.end method

.method public setAutoContrastEnabled(Z)Z
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$500(Lcom/android/server/custom/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$400(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/server/custom/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/custom/display/DisplayHardwareController;->setAutoContrastEnabled(Z)Z

    move-result p1

    return p1
.end method

.method public setAutomaticOutdoorModeEnabled(Z)Z
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$500(Lcom/android/server/custom/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$600(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/server/custom/display/OutdoorModeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/custom/display/OutdoorModeController;->setAutomaticOutdoorModeEnabled(Z)Z

    move-result p1

    return p1
.end method

.method public setCABCEnabled(Z)Z
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$500(Lcom/android/server/custom/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$400(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/server/custom/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/custom/display/DisplayHardwareController;->setCABCEnabled(Z)Z

    move-result p1

    return p1
.end method

.method public setColorAdjustment([F)Z
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$500(Lcom/android/server/custom/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$400(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/server/custom/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/custom/display/DisplayHardwareController;->setColorAdjustment([F)Z

    move-result p1

    return p1
.end method

.method public setColorEnhancementEnabled(Z)Z
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$500(Lcom/android/server/custom/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "lineageos.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$400(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/server/custom/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/custom/display/DisplayHardwareController;->setColorEnhancementEnabled(Z)Z

    move-result p1

    return p1
.end method

.method public setPictureAdjustment(Lcom/android/internal/custom/hardware/HSIC;)Z
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/server/custom/display/LiveDisplayService$2;->this$0:Lcom/android/server/custom/display/LiveDisplayService;

    invoke-static {v0}, Lcom/android/server/custom/display/LiveDisplayService;->access$700(Lcom/android/server/custom/display/LiveDisplayService;)Lcom/android/server/custom/display/PictureAdjustmentController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/custom/display/PictureAdjustmentController;->setPictureAdjustment(Lcom/android/internal/custom/hardware/HSIC;)Z

    move-result p1

    return p1
.end method
