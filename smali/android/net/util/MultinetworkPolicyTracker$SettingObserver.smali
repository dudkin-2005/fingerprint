.class Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;
.super Landroid/database/ContentObserver;
.source "MultinetworkPolicyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/util/MultinetworkPolicyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/util/MultinetworkPolicyTracker;


# direct methods
.method public constructor <init>(Landroid/net/util/MultinetworkPolicyTracker;)V
    .locals 0

    .line 178
    iput-object p1, p0, Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;->this$0:Landroid/net/util/MultinetworkPolicyTracker;

    .line 179
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 180
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 184
    invoke-static {}, Landroid/net/util/MultinetworkPolicyTracker;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Should never be reached."

    invoke-static {p1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 189
    iget-object p1, p0, Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;->this$0:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-static {p1}, Landroid/net/util/MultinetworkPolicyTracker;->access$100(Landroid/net/util/MultinetworkPolicyTracker;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 190
    invoke-static {}, Landroid/net/util/MultinetworkPolicyTracker;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected settings observation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    iget-object p1, p0, Landroid/net/util/MultinetworkPolicyTracker$SettingObserver;->this$0:Landroid/net/util/MultinetworkPolicyTracker;

    invoke-virtual {p1}, Landroid/net/util/MultinetworkPolicyTracker;->reevaluate()V

    .line 193
    return-void
.end method
