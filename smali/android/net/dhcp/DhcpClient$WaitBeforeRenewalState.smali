.class Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;
.super Landroid/net/dhcp/DhcpClient$WaitBeforeOtherState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitBeforeRenewalState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/State;)V
    .locals 0

    .line 686
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;->this$0:Landroid/net/dhcp/DhcpClient;

    .line 687
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$WaitBeforeOtherState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    .line 688
    iput-object p2, p0, Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;->mOtherState:Lcom/android/internal/util/State;

    .line 689
    return-void
.end method
