.class public Lcom/android/server/connectivity/Vpn$SystemServices;
.super Ljava/lang/Object;
.source "Vpn.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemServices"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1605
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$SystemServices;->mContext:Landroid/content/Context;

    .line 1606
    return-void
.end method


# virtual methods
.method public pendingIntentGetActivityAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;
    .locals 6

    .line 1613
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$SystemServices;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public settingsSecureGetIntForUser(Ljava/lang/String;II)I
    .locals 1

    .line 1642
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$SystemServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1635
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$SystemServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public settingsSecurePutIntForUser(Ljava/lang/String;II)V
    .locals 1

    .line 1628
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$SystemServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1629
    return-void
.end method

.method public settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1621
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$SystemServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1622
    return-void
.end method
