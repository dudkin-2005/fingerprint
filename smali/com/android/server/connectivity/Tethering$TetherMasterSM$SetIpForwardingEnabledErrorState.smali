.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;
.super Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SetIpForwardingEnabledErrorState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0

    .line 1682
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 1685
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error in setIpForwardingEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    const v0, 0x5006b

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;->notify(I)V

    .line 1687
    return-void
.end method