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
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 78
    iget-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-static {p1}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$000(Lcom/android/server/emergency/EmergencyAffordanceService;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-static {p1}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$100(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    .line 81
    :cond_0
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-static {p1}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$000(Lcom/android/server/emergency/EmergencyAffordanceService;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$1;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-static {p1}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$100(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    .line 88
    :cond_0
    return-void
.end method
