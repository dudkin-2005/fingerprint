.class public final Lcom/android/server/am/EmbryoSupervisor$RankComparator;
.super Ljava/lang/Object;
.source "EmbryoSupervisor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/EmbryoSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RankComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/EmbryoSupervisor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/EmbryoSupervisor;Lcom/android/server/am/EmbryoSupervisor;)I
    .registers 6
    .param p1, "lhs"    # Lcom/android/server/am/EmbryoSupervisor;
    .param p2, "rhs"    # Lcom/android/server/am/EmbryoSupervisor;

    .line 222
    # getter for: Lcom/android/server/am/EmbryoSupervisor;->rank:I
    invoke-static {p1}, Lcom/android/server/am/EmbryoSupervisor;->access$200(Lcom/android/server/am/EmbryoSupervisor;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 223
    .local v0, "l1":Ljava/lang/Integer;
    # getter for: Lcom/android/server/am/EmbryoSupervisor;->rank:I
    invoke-static {p2}, Lcom/android/server/am/EmbryoSupervisor;->access$200(Lcom/android/server/am/EmbryoSupervisor;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 224
    .local v1, "l2":Ljava/lang/Integer;
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 219
    check-cast p1, Lcom/android/server/am/EmbryoSupervisor;

    check-cast p2, Lcom/android/server/am/EmbryoSupervisor;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/EmbryoSupervisor$RankComparator;->compare(Lcom/android/server/am/EmbryoSupervisor;Lcom/android/server/am/EmbryoSupervisor;)I

    move-result p1

    return p1
.end method
