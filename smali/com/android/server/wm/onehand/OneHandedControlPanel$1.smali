.class Lcom/android/server/wm/onehand/OneHandedControlPanel$1;
.super Ljava/lang/Object;
.source "OneHandedControlPanel.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/onehand/OneHandedControlPanel;->createGuidePanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;


# direct methods
.method constructor <init>(Lcom/android/server/wm/onehand/OneHandedControlPanel;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$1;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 356
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$1;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    iget-object p2, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$1;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    iget-object p3, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$1;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p3}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$600(Lcom/android/server/wm/onehand/OneHandedControlPanel;)Landroid/view/View;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$700(Lcom/android/server/wm/onehand/OneHandedControlPanel;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, p2}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$502(Lcom/android/server/wm/onehand/OneHandedControlPanel;I)I

    .line 357
    return-void
.end method
