.class Lcom/android/server/emergency/EmergencyAffordanceService$1;
.super Landroid/telephony/PhoneStateListener;
.source "EmergencyAffordanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/emergency/EmergencyAffordanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/emergency/EmergencyAffordanceService;


# direct methods
.method constructor <init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 90
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellInfoChanged(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-string v0, "EmergencyAffordanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCellInfoChanged  cellInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    # invokes: Lcom/android/server/emergency/EmergencyAffordanceService;->isEmergencyAffordanceNeeded()Z
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$000(Lcom/android/server/emergency/EmergencyAffordanceService;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 95
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    # invokes: Lcom/android/server/emergency/EmergencyAffordanceService;->requestCellScan()V
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$100(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    .line 97
    :cond_24
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 5
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .line 101
    const-string v0, "EmergencyAffordanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCellLocationChanged  location "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    # invokes: Lcom/android/server/emergency/EmergencyAffordanceService;->isEmergencyAffordanceNeeded()Z
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$000(Lcom/android/server/emergency/EmergencyAffordanceService;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 103
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    # invokes: Lcom/android/server/emergency/EmergencyAffordanceService;->requestCellScan()V
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$100(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    .line 105
    :cond_24
    return-void
.end method
