.class Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub$1;
.super Ljava/lang/Object;
.source "IOneplusParam.java"

# interfaces
.implements Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$getParamIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;Landroid/os/HwParcel;)V
    .registers 3
    .param p1, "this$0"    # Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;

    .line 502
    iput-object p1, p0, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub$1;->this$0:Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub;

    iput-object p2, p0, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ZI)V
    .registers 5
    .param p1, "result"    # Z
    .param p2, "value"    # I

    .line 505
    iget-object v0, p0, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 506
    iget-object v0, p0, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 507
    iget-object v0, p0, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 508
    iget-object v0, p0, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    .line 509
    return-void
.end method
