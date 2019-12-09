.class Lcom/android/server/telecom/TelecomLoaderService$4;
.super Landroid/database/ContentObserver;
.source "TelecomLoaderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/TelecomLoaderService;->registerDefaultAppNotifier()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomLoaderService;

.field final synthetic val$defaultDialerAppUri:Landroid/net/Uri;

.field final synthetic val$defaultSmsAppUri:Landroid/net/Uri;

.field final synthetic val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/TelecomLoaderService;Landroid/os/Handler;Landroid/net/Uri;Landroid/content/pm/PackageManagerInternal;Landroid/net/Uri;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    iput-object p3, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$defaultSmsAppUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iput-object p5, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$defaultDialerAppUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 286
    iget-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$defaultSmsAppUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 287
    iget-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 288
    invoke-static {p1}, Lcom/android/server/telecom/TelecomLoaderService;->access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    .line 287
    invoke-static {p1, p2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p1

    .line 289
    if-eqz p1, :cond_0

    .line 290
    iget-object p2, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 291
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 290
    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultSmsApp(Ljava/lang/String;I)V

    .line 293
    :cond_0
    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$defaultDialerAppUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 294
    iget-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    .line 295
    invoke-static {p1}, Lcom/android/server/telecom/TelecomLoaderService;->access$100(Lcom/android/server/telecom/TelecomLoaderService;)Landroid/content/Context;

    move-result-object p1

    .line 294
    invoke-static {p1}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 296
    if-eqz p1, :cond_2

    .line 297
    iget-object p2, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageManagerInternal;->grantDefaultPermissionsToDefaultDialerApp(Ljava/lang/String;I)V

    .line 300
    :cond_2
    iget-object p1, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->this$0:Lcom/android/server/telecom/TelecomLoaderService;

    iget-object p2, p0, Lcom/android/server/telecom/TelecomLoaderService$4;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1, p2, p3}, Lcom/android/server/telecom/TelecomLoaderService;->access$800(Lcom/android/server/telecom/TelecomLoaderService;Landroid/content/pm/PackageManagerInternal;I)V

    .line 302
    :cond_3
    :goto_0
    return-void
.end method
