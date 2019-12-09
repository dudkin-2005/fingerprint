.class final Lcom/android/server/pm/PolicyComparator;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/pm/Policy;",
        ">;"
    }
.end annotation


# instance fields
.field private duplicateFound:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/pm/Policy;Lcom/android/server/pm/Policy;)I
    .locals 4

    .line 693
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->hasInnerPackages()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->hasInnerPackages()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    .line 694
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->hasInnerPackages()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, -0x1

    nop

    :cond_0
    return v2

    .line 698
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->getSignatures()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->getSignatures()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 700
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->hasGlobalSeinfo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 701
    iput-boolean v2, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    .line 702
    const-string v0, "SELinuxMMAC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate policy entry: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->getInnerPackages()Ljava/util/Map;

    move-result-object v0

    .line 707
    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->getInnerPackages()Ljava/util/Map;

    move-result-object p2

    .line 708
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 709
    iput-boolean v2, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    .line 710
    const-string p2, "SELinuxMMAC"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate policy entry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 681
    check-cast p1, Lcom/android/server/pm/Policy;

    check-cast p2, Lcom/android/server/pm/Policy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PolicyComparator;->compare(Lcom/android/server/pm/Policy;Lcom/android/server/pm/Policy;)I

    move-result p1

    return p1
.end method

.method public foundDuplicate()Z
    .locals 1

    .line 686
    iget-boolean v0, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    return v0
.end method
