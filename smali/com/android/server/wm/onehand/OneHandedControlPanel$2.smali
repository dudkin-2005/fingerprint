.class Lcom/android/server/wm/onehand/OneHandedControlPanel$2;
.super Landroid/widget/FrameLayout;
.source "OneHandedControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/onehand/OneHandedControlPanel;->createControlPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;


# direct methods
.method constructor <init>(Lcom/android/server/wm/onehand/OneHandedControlPanel;Landroid/content/Context;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$2;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 387
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedControlPanel$2;->this$0:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-static {p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->access$800(Lcom/android/server/wm/onehand/OneHandedControlPanel;)V

    .line 388
    return-void
.end method
