.class Lcom/android/server/wm/AppTransition$2;
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

    .line 295
    iput-object p1, p0, Lcom/android/server/wm/AppTransition$2;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .line 299
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 300
    div-float/2addr p1, v0

    .line 301
    iget-object v0, p0, Lcom/android/server/wm/AppTransition$2;->this$0:Lcom/android/server/wm/AppTransition;

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->access$100(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    return p1

    .line 303
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method
