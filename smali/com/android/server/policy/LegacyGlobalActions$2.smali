.class Lcom/android/server/policy/LegacyGlobalActions$2;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->createDialog()Lcom/android/internal/globalactions/ActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$2;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 337
    iget-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$2;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p1}, Lcom/android/server/policy/LegacyGlobalActions;->access$500(Lcom/android/server/policy/LegacyGlobalActions;)Lcom/android/internal/globalactions/ActionsAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/internal/globalactions/ActionsAdapter;->getItem(I)Lcom/android/internal/globalactions/Action;

    move-result-object p1

    .line 338
    instance-of p2, p1, Lcom/android/internal/globalactions/LongPressAction;

    if-eqz p2, :cond_0

    .line 339
    check-cast p1, Lcom/android/internal/globalactions/LongPressAction;

    invoke-interface {p1}, Lcom/android/internal/globalactions/LongPressAction;->onLongPress()Z

    move-result p1

    return p1

    .line 341
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
