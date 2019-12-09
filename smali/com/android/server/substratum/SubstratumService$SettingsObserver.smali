.class Lcom/android/server/substratum/SubstratumService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SubstratumService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/substratum/SubstratumService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/substratum/SubstratumService;


# direct methods
.method public constructor <init>(Lcom/android/server/substratum/SubstratumService;)V
    .locals 0

    .line 1067
    iput-object p1, p0, Lcom/android/server/substratum/SubstratumService$SettingsObserver;->this$0:Lcom/android/server/substratum/SubstratumService;

    .line 1068
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1069
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1073
    iget-object p1, p0, Lcom/android/server/substratum/SubstratumService$SettingsObserver;->this$0:Lcom/android/server/substratum/SubstratumService;

    invoke-static {p1}, Lcom/android/server/substratum/SubstratumService;->access$2800(Lcom/android/server/substratum/SubstratumService;)V

    .line 1074
    return-void
.end method
