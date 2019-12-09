.class Lcom/android/server/OemSceneGameModeDialog$18;
.super Ljava/lang/Object;
.source "OemSceneGameModeDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModeDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneGameModeDialog;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneGameModeDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 947
    iput-object p1, p0, Lcom/android/server/OemSceneGameModeDialog$18;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "value"    # Z

    .line 950
    sput p2, Lcom/android/server/OemSceneGameModeView;->sDontShowAgainValue:I

    .line 951
    return-void
.end method
