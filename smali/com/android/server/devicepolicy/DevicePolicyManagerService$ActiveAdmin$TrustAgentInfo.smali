.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrustAgentInfo"
.end annotation


# instance fields
.field public options:Landroid/os/PersistableBundle;


# direct methods
.method constructor <init>(Landroid/os/PersistableBundle;)V
    .locals 0

    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 954
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    .line 955
    return-void
.end method
