.class Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OPQuickPayConfig"
.end annotation


# instance fields
.field appIcon:Landroid/graphics/drawable/Drawable;

.field className:Ljava/lang/String;

.field index:I

.field isDefault:Z

.field isSDKstart:Z

.field packageName:Ljava/lang/String;

.field switchName:Ljava/lang/String;

.field tartgetClassName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;

.field urlScheme:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .line 307
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isSDKstart:Z

    .line 314
    iput-boolean v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->isDefault:Z

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
