.class public interface abstract Lcom/android/server/NsdService$NsdSettings;
.super Ljava/lang/Object;
.source "NsdService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NsdSettings"
.end annotation


# direct methods
.method public static makeDefault(Landroid/content/Context;)Lcom/android/server/NsdService$NsdSettings;
    .locals 1

    .line 894
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 895
    new-instance v0, Lcom/android/server/NsdService$NsdSettings$1;

    invoke-direct {v0, p0}, Lcom/android/server/NsdService$NsdSettings$1;-><init>(Landroid/content/ContentResolver;)V

    return-object v0
.end method


# virtual methods
.method public abstract isEnabled()Z
.end method

.method public abstract putEnabledStatus(Z)V
.end method

.method public abstract registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V
.end method
