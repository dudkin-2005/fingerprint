.class Lcom/android/server/policy/OemThreePointersGesturesListener$YComparator;
.super Ljava/lang/Object;
.source "OemThreePointersGesturesListener.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemThreePointersGesturesListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "YComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/graphics/Point;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemThreePointersGesturesListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemThreePointersGesturesListener;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/OemThreePointersGesturesListener;

    .line 343
    iput-object p1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener$YComparator;->this$0:Lcom/android/server/policy/OemThreePointersGesturesListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .registers 5
    .param p1, "o1"    # Landroid/graphics/Point;
    .param p2, "o2"    # Landroid/graphics/Point;

    .line 345
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_8

    const/4 v0, -0x1

    goto :goto_11

    :cond_8
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 343
    check-cast p1, Landroid/graphics/Point;

    check-cast p2, Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/OemThreePointersGesturesListener$YComparator;->compare(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result p1

    return p1
.end method
