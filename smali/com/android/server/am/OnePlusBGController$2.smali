.class Lcom/android/server/am/OnePlusBGController$2;
.super Ljava/lang/Object;
.source "OnePlusBGController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusBGController;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusBGController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusBGController;

    .line 1516
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$2;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;)I
    .registers 7
    .param p1, "a"    # Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
    .param p2, "b"    # Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    .line 1519
    invoke-virtual {p2}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getDayOfBgmAh()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->getDayOfBgmAh()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1516
    check-cast p1, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    check-cast p2, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusBGController$2;->compare(Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;)I

    move-result p1

    return p1
.end method
