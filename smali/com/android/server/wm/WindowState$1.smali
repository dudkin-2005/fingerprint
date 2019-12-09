.class Lcom/android/server/wm/WindowState$1;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .locals 0

    .line 664
    iget p1, p1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 665
    iget p2, p2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 666
    if-lt p1, p2, :cond_1

    if-ne p1, p2, :cond_0

    if-gez p2, :cond_0

    goto :goto_0

    .line 673
    :cond_0
    const/4 p1, 0x1

    return p1

    .line 671
    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 661
    check-cast p1, Lcom/android/server/wm/WindowState;

    check-cast p2, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowState$1;->compare(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result p1

    return p1
.end method
