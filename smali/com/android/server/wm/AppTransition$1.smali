.class Lcom/android/server/wm/AppTransition$1;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/AppTransition;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppTransition;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppTransition;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/android/server/wm/AppTransition$1;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .line 287
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 288
    const/4 p1, 0x0

    return p1

    .line 290
    :cond_0
    sub-float/2addr p1, v0

    div-float/2addr p1, v0

    .line 292
    iget-object v0, p0, Lcom/android/server/wm/AppTransition$1;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->access$000(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    return p1
.end method
