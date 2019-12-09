.class public Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;
.super Ljava/lang/Object;
.source "Tethering.java"

# interfaces
.implements Landroid/os/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TetheringUserRestrictionListener"
.end annotation


# instance fields
.field private final mWrapper:Lcom/android/server/connectivity/Tethering;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 934
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    .line 935
    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1

    .line 940
    const-string p1, "no_config_tethering"

    .line 941
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 942
    const-string p2, "no_config_tethering"

    .line 943
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 944
    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    .line 946
    move p2, p3

    goto :goto_0

    .line 944
    :cond_0
    nop

    .line 946
    move p2, v0

    :goto_0
    if-nez p2, :cond_1

    .line 947
    return-void

    .line 950
    :cond_1
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {p2}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    .line 951
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {p2}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 953
    :cond_2
    move p3, v0

    :goto_1
    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 954
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    const p2, 0x10807f6

    invoke-virtual {p1, p2, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(IZ)V

    .line 956
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {p1}, Lcom/android/server/connectivity/Tethering;->untetherAll()V

    .line 958
    :cond_3
    return-void
.end method
