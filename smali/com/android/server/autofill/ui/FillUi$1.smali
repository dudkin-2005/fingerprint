.class Lcom/android/server/autofill/ui/FillUi$1;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/ui/FillUi;-><init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/OverlayControl;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/FillUi$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/ui/FillUi;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/ui/FillUi;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi$1;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 0

    .line 205
    if-eqz p2, :cond_0

    .line 206
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi$1;->this$0:Lcom/android/server/autofill/ui/FillUi;

    invoke-static {p1}, Lcom/android/server/autofill/ui/FillUi;->access$100(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$Callback;

    move-result-object p1

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/server/autofill/ui/FillUi$Callback;->startIntentSender(Landroid/content/IntentSender;)V

    .line 208
    :cond_0
    const/4 p1, 0x1

    return p1
.end method
