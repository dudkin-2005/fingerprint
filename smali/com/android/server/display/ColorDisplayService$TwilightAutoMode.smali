.class Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;
.super Lcom/android/server/display/ColorDisplayService$AutoMode;
.source "ColorDisplayService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwilightAutoMode"
.end annotation


# instance fields
.field private final mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field final synthetic this$0:Lcom/android/server/display/ColorDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/display/ColorDisplayService;)V
    .locals 1

    .line 634
    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/ColorDisplayService$AutoMode;-><init>(Lcom/android/server/display/ColorDisplayService;Lcom/android/server/display/ColorDisplayService$1;)V

    .line 635
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-static {p1, v0}, Lcom/android/server/display/ColorDisplayService;->access$1100(Lcom/android/server/display/ColorDisplayService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/twilight/TwilightManager;

    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 636
    return-void
.end method

.method private updateActivated(Lcom/android/server/twilight/TwilightState;)V
    .locals 4

    .line 639
    if-nez p1, :cond_0

    .line 642
    return-void

    .line 645
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v0

    .line 646
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/ColorDisplayService;->access$900(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getLastActivatedTime()Ljava/time/LocalDateTime;

    move-result-object v1

    .line 647
    if-eqz v1, :cond_1

    .line 648
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    .line 649
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->sunrise()Ljava/time/LocalDateTime;

    move-result-object v3

    .line 650
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->sunset()Ljava/time/LocalDateTime;

    move-result-object p1

    .line 652
    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v2

    .line 653
    invoke-virtual {v1, p1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_1

    .line 654
    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/ColorDisplayService;->access$900(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    .line 658
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/ColorDisplayService;->access$1000(Lcom/android/server/display/ColorDisplayService;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/ColorDisplayService;->access$1000(Lcom/android/server/display/ColorDisplayService;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq p1, v0, :cond_3

    .line 659
    :cond_2
    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/ColorDisplayService;->access$900(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 661
    :cond_3
    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 0

    .line 678
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 665
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/ColorDisplayService;->access$1200(Lcom/android/server/display/ColorDisplayService;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 668
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    .line 669
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0, p0}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    .line 674
    return-void
.end method

.method public onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V
    .locals 3

    .line 682
    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTwilightStateChanged: isNight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 682
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    .line 685
    return-void
.end method
