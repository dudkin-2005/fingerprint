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
    .registers 2
    .param p1, "wrapper"    # Lcom/android/server/connectivity/Tethering;

    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1099
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    .line 1100
    return-void
.end method


# virtual methods
.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "newRestrictions"    # Landroid/os/Bundle;
    .param p3, "prevRestrictions"    # Landroid/os/Bundle;

    .line 1105
    const-string/jumbo v0, "no_config_tethering"

    .line 1106
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1107
    .local v0, "newlyDisallowed":Z
    const-string/jumbo v1, "no_config_tethering"

    .line 1108
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1109
    .local v1, "previouslyDisallowed":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_14

    move v4, v2

    goto :goto_15

    :cond_14
    move v4, v3

    .line 1111
    .local v4, "tetheringDisallowedChanged":Z
    :goto_15
    if-nez v4, :cond_18

    .line 1112
    return-void

    .line 1115
    :cond_18
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v5}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    .line 1116
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v5}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_27

    goto :goto_28

    :cond_27
    move v2, v3

    .line 1118
    .local v2, "isTetheringActiveOnDevice":Z
    :goto_28
    if-eqz v0, :cond_39

    if-eqz v2, :cond_39

    .line 1119
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    const v6, 0x10807da

    invoke-virtual {v5, v6, v3}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(IZ)V

    .line 1121
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;->mWrapper:Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Tethering;->untetherAll()V

    .line 1123
    :cond_39
    return-void
.end method
