.class public Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;
.super Lcom/android/server/pm/PackageDexOptimizer;
.source "PackageDexOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageDexOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForcedUpdatePackageDexOptimizer"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 710
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageDexOptimizer;-><init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    .line 711
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageDexOptimizer;)V
    .locals 0

    .line 714
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageDexOptimizer;-><init>(Lcom/android/server/pm/PackageDexOptimizer;)V

    .line 715
    return-void
.end method


# virtual methods
.method protected adjustDexoptFlags(I)I
    .locals 0

    .line 732
    or-int/lit8 p1, p1, 0x40

    return p1
.end method

.method protected adjustDexoptNeeded(I)I
    .locals 0

    .line 719
    if-nez p1, :cond_0

    .line 723
    const/4 p1, -0x3

    return p1

    .line 725
    :cond_0
    return p1
.end method
