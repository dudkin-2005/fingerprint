.class Landroid/hardware/health/V2_0/IHealth$Stub$3;
.super Ljava/lang/Object;
.source "IHealth.java"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/health/V2_0/IHealth$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/health/V2_0/IHealth$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V
    .locals 0

    .line 890
    iput-object p1, p0, Landroid/hardware/health/V2_0/IHealth$Stub$3;->this$0:Landroid/hardware/health/V2_0/IHealth$Stub;

    iput-object p2, p0, Landroid/hardware/health/V2_0/IHealth$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(II)V
    .locals 2

    .line 893
    iget-object v0, p0, Landroid/hardware/health/V2_0/IHealth$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 894
    iget-object v0, p0, Landroid/hardware/health/V2_0/IHealth$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 895
    iget-object p1, p0, Landroid/hardware/health/V2_0/IHealth$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 896
    iget-object p1, p0, Landroid/hardware/health/V2_0/IHealth$Stub$3;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1}, Landroid/os/HwParcel;->send()V

    .line 897
    return-void
.end method
