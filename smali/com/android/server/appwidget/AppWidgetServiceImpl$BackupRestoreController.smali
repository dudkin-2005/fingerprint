.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackupRestoreController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "BackupRestoreController"

.field private static final WIDGET_STATE_VERSION:I = 0x2


# instance fields
.field private final mPrunedApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdatesByHost:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUpdatesByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .registers 2

    .line 4323
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4335
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedApps:Ljava/util/HashSet;

    .line 4337
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    .line 4339
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p2, "x1"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    .line 4323
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    return-void
.end method

.method private alreadyStashed(Ljava/util/ArrayList;II)Z
    .registers 9
    .param p2, "oldId"    # I
    .param p3, "newId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;II)Z"
        }
    .end annotation

    .line 4777
    .local p1, "stash":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4778
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_1b

    .line 4779
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    .line 4780
    .local v3, "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    iget v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    if-ne v4, p2, :cond_18

    iget v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    if-ne v4, p3, :cond_18

    .line 4781
    const/4 v1, 0x1

    return v1

    .line 4778
    .end local v3    # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 4784
    .end local v2    # "i":I
    :cond_1b
    return v1
.end method

.method private countPendingUpdates(Ljava/util/ArrayList;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;",
            ">;)I"
        }
    .end annotation

    .line 4894
    .local p1, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    const/4 v0, 0x0

    .line 4895
    .local v0, "pending":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4896
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_17

    .line 4897
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    .line 4898
    .local v3, "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    iget-boolean v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    if-nez v4, :cond_14

    .line 4899
    add-int/lit8 v0, v0, 0x1

    .line 4896
    .end local v3    # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 4902
    .end local v2    # "i":I
    :cond_17
    return v0
.end method

.method private findProviderLocked(Landroid/content/ComponentName;I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .registers 7
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 4697
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4698
    .local v0, "providerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_2d

    .line 4699
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4700
    .local v2, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_2a

    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 4701
    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 4702
    return-object v2

    .line 4698
    .end local v2    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 4705
    .end local v1    # "i":I
    :cond_2d
    const/4 v1, 0x0

    return-object v1
.end method

.method private findRestoredWidgetLocked(ILcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .registers 10
    .param p1, "restoredId"    # I
    .param p2, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p3, "p"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4710
    const-string v0, "BackupRestoreController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Find restored widget: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " provider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4714
    const/4 v0, 0x0

    if-eqz p3, :cond_84

    if-nez p2, :cond_2c

    goto :goto_84

    .line 4718
    :cond_2c
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4719
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_37
    if-ge v2, v1, :cond_83

    .line 4720
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4721
    .local v3, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    if-ne v4, p1, :cond_80

    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v5, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    .line 4722
    invoke-virtual {v4, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v4, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v5, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 4723
    invoke-virtual {v4, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 4725
    const-string v0, "BackupRestoreController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   Found at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4727
    return-object v3

    .line 4719
    .end local v3    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 4730
    .end local v2    # "i":I
    :cond_83
    return-object v0

    .line 4715
    .end local v1    # "N":I
    :cond_84
    :goto_84
    return-object v0
.end method

.method private isProviderAndHostInUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)Z
    .registers 4
    .param p1, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "userId"    # I

    .line 4859
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_16

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4860
    invoke-virtual {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_16

    :cond_14
    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 4859
    :goto_17
    return v0
.end method

.method private packageNeedsWidgetBackupLocked(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4734
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4735
    .local v0, "N":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_39

    .line 4736
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4739
    .local v3, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v3, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->isProviderAndHostInUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)Z

    move-result v4

    if-nez v4, :cond_21

    .line 4740
    goto :goto_36

    .line 4743
    :cond_21
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2b

    .line 4745
    return v5

    .line 4748
    :cond_2b
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4749
    .local v4, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v4, :cond_36

    invoke-virtual {v4, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 4751
    return v5

    .line 4735
    .end local v3    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v4    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 4754
    .end local v2    # "i":I
    :cond_39
    return v1
.end method

.method private parseWidgetIdOptions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 4864
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4865
    .local v0, "options":Landroid/os/Bundle;
    const-string/jumbo v1, "min_width"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4866
    .local v1, "minWidthString":Ljava/lang/String;
    const/16 v3, 0x10

    if-eqz v1, :cond_1a

    .line 4867
    const-string v4, "appWidgetMinWidth"

    .line 4868
    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 4867
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4870
    :cond_1a
    const-string/jumbo v4, "min_height"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4871
    .local v4, "minHeightString":Ljava/lang/String;
    if-eqz v4, :cond_2c

    .line 4872
    const-string v5, "appWidgetMinHeight"

    .line 4873
    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 4872
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4875
    :cond_2c
    const-string/jumbo v5, "max_width"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4876
    .local v5, "maxWidthString":Ljava/lang/String;
    if-eqz v5, :cond_3e

    .line 4877
    const-string v6, "appWidgetMaxWidth"

    .line 4878
    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 4877
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4880
    :cond_3e
    const-string/jumbo v6, "max_height"

    invoke-interface {p1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4881
    .local v6, "maxHeightString":Ljava/lang/String;
    if-eqz v6, :cond_50

    .line 4882
    const-string v7, "appWidgetMaxHeight"

    .line 4883
    invoke-static {v6, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 4882
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4885
    :cond_50
    const-string/jumbo v7, "host_category"

    invoke-interface {p1, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4886
    .local v2, "categoryString":Ljava/lang/String;
    if-eqz v2, :cond_62

    .line 4887
    const-string v7, "appWidgetCategory"

    .line 4888
    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 4887
    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4890
    :cond_62
    return-object v0
.end method

.method private pruneWidgetStateLocked(Ljava/lang/String;I)V
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4826
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedApps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 4828
    const-string v0, "BackupRestoreController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pruning widget state for restoring package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4830
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4830
    .local v0, "i":I
    :goto_2b
    if-ltz v0, :cond_62

    .line 4831
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4833
    .local v1, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v2, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4834
    .local v2, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v3, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4836
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->hostsPackageForUser(Ljava/lang/String;I)Z
    invoke-static {v2, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->access$3500(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_4b

    if-eqz v3, :cond_5f

    .line 4837
    invoke-virtual {v3, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 4841
    :cond_4b
    iget-object v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4842
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4845
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->decrementAppWidgetServiceRefCount(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    invoke-static {v4, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$4200(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 4846
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {v4, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->removeWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 4830
    .end local v1    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v2    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_5f
    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    .line 4849
    .end local v0    # "i":I
    :cond_62
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedApps:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_83

    .line 4852
    :cond_68
    const-string v0, "BackupRestoreController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already pruned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", continuing normally"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4855
    :goto_83
    return-void
.end method

.method private sendWidgetRestoreBroadcastLocked(Ljava/lang/String;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;[I[ILandroid/os/UserHandle;)V
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p3, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p4, "oldIds"    # [I
    .param p5, "newIds"    # [I
    .param p6, "userHandle"    # Landroid/os/UserHandle;

    .line 4806
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4807
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "appWidgetOldIds"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 4808
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 4809
    if-eqz p2, :cond_1d

    .line 4810
    iget-object v1, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4811
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    invoke-static {v1, v0, p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$4100(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4813
    :cond_1d
    if-eqz p3, :cond_39

    .line 4814
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4815
    iget-object v1, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v1, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4816
    const-string/jumbo v1, "hostId"

    iget-object v2, p3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->hostId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4817
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    invoke-static {v1, v0, p6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$4100(Lcom/android/server/appwidget/AppWidgetServiceImpl;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4819
    :cond_39
    return-void
.end method

.method private stashHostRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;II)V
    .registers 8
    .param p1, "host"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "oldId"    # I
    .param p3, "newId"    # I

    .line 4788
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4789
    .local v0, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    if-nez v0, :cond_16

    .line 4790
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 4791
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 4793
    :cond_16
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->alreadyStashed(Ljava/util/ArrayList;II)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 4795
    const-string v1, "BackupRestoreController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID remap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " already stashed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4798
    return-void

    .line 4801
    :cond_43
    :goto_43
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4802
    return-void
.end method

.method private stashProviderRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;II)V
    .registers 8
    .param p1, "provider"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "oldId"    # I
    .param p3, "newId"    # I

    .line 4758
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4759
    .local v0, "r":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    if-nez v0, :cond_16

    .line 4760
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 4761
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 4764
    :cond_16
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->alreadyStashed(Ljava/util/ArrayList;II)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 4766
    const-string v1, "BackupRestoreController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID remap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " already stashed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4769
    return-void

    .line 4772
    :cond_43
    :goto_43
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4773
    return-void
.end method


# virtual methods
.method public getWidgetParticipants(I)Ljava/util/List;
    .registers 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4344
    const-string v0, "BackupRestoreController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting widget participants for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4347
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4348
    .local v0, "packages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4349
    :try_start_22
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4350
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2d
    if-ge v3, v2, :cond_5d

    .line 4351
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4354
    .local v4, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    invoke-direct {p0, v4, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->isProviderAndHostInUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;I)Z

    move-result v5

    if-nez v5, :cond_42

    .line 4355
    goto :goto_5a

    .line 4358
    :cond_42
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4359
    iget-object v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4360
    .local v5, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-eqz v5, :cond_5a

    .line 4361
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4350
    .end local v4    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v5    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_5a
    :goto_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 4364
    .end local v2    # "N":I
    .end local v3    # "i":I
    :cond_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_22 .. :try_end_5e} :catchall_64

    .line 4365
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 4364
    :catchall_64
    move-exception v2

    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v2
.end method

.method public getWidgetState(Ljava/lang/String;I)[B
    .registers 13
    .param p1, "backedupPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4370
    const-string v0, "BackupRestoreController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting widget state for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4373
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4374
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4377
    :try_start_22
    invoke-direct {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->packageNeedsWidgetBackupLocked(Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2b

    .line 4378
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_125

    return-object v3

    .line 4382
    :cond_2b
    :try_start_2b
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 4383
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4384
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4385
    const-string/jumbo v4, "ws"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4386
    const-string/jumbo v4, "version"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4387
    const-string/jumbo v4, "pkg"

    invoke-interface {v2, v3, v4, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4392
    const/4 v4, 0x0

    .line 4393
    .local v4, "index":I
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4394
    .local v5, "N":I
    const/4 v6, 0x0

    move v7, v4

    move v4, v6

    .line 4394
    .local v4, "i":I
    .local v7, "index":I
    :goto_66
    if-ge v4, v5, :cond_90

    .line 4395
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4397
    .local v8, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->shouldBePersisted()Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 4398
    invoke-virtual {v8, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_86

    .line 4399
    invoke-virtual {v8, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->hostedByPackageForUser(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 4400
    :cond_86
    iput v7, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 4401
    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeProvider(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    invoke-static {v2, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3300(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V

    .line 4402
    add-int/lit8 v7, v7, 0x1

    .line 4394
    .end local v8    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_8d
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 4406
    .end local v4    # "i":I
    :cond_90
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4407
    .end local v5    # "N":I
    .local v4, "N":I
    const/4 v5, 0x0

    .line 4408
    .end local v7    # "index":I
    .local v5, "index":I
    move v7, v5

    move v5, v6

    .line 4408
    .local v5, "i":I
    .restart local v7    # "index":I
    :goto_9d
    if-ge v5, v4, :cond_c9

    .line 4409
    iget-object v8, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mHosts:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4411
    .local v8, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v9, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c6

    .line 4412
    invoke-virtual {v8, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_bf

    .line 4413
    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->hostsPackageForUser(Ljava/lang/String;I)Z
    invoke-static {v8, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->access$3500(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_c6

    .line 4414
    :cond_bf
    iput v7, v8, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    .line 4415
    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeHost(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V
    invoke-static {v2, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3600(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;)V

    .line 4416
    add-int/lit8 v7, v7, 0x1

    .line 4408
    .end local v8    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    :cond_c6
    add-int/lit8 v5, v5, 0x1

    goto :goto_9d

    .line 4422
    .end local v5    # "i":I
    :cond_c9
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v5

    .line 4423
    nop

    .line 4423
    .local v6, "i":I
    :goto_d5
    move v5, v6

    .line 4423
    .end local v6    # "i":I
    .restart local v5    # "i":I
    if-ge v5, v4, :cond_fc

    .line 4424
    iget-object v6, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4426
    .local v6, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v8, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4427
    .local v8, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    iget-object v9, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v9, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_f6

    if-eqz v8, :cond_f9

    .line 4429
    invoke-virtual {v8, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->isInPackageForUser(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_f9

    .line 4430
    :cond_f6
    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->serializeAppWidget(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V
    invoke-static {v2, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3700(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    .line 4423
    .end local v6    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v8    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_f9
    add-int/lit8 v6, v5, 0x1

    .line 4423
    .end local v5    # "i":I
    .local v6, "i":I
    goto :goto_d5

    .line 4434
    .end local v6    # "i":I
    :cond_fc
    const-string/jumbo v5, "ws"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4435
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_105} :catch_10c
    .catchall {:try_start_2b .. :try_end_105} :catchall_125

    .line 4439
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "N":I
    .end local v7    # "index":I
    nop

    .line 4440
    :try_start_106
    monitor-exit v1
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_125

    .line 4442
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 4436
    :catch_10c
    move-exception v2

    .line 4437
    .local v2, "e":Ljava/io/IOException;
    :try_start_10d
    const-string v4, "BackupRestoreController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to save widget state for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4438
    monitor-exit v1

    return-object v3

    .line 4440
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_125
    move-exception v2

    monitor-exit v1
    :try_end_127
    .catchall {:try_start_10d .. :try_end_127} :catchall_125

    throw v2
.end method

.method public restoreFinished(I)V
    .registers 24
    .param p1, "userId"    # I

    move-object/from16 v15, p0

    .line 4620
    move/from16 v14, p1

    const-string v0, "BackupRestoreController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreFinished for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4623
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v14}, Landroid/os/UserHandle;-><init>(I)V

    .line 4624
    .local v7, "userHandle":Landroid/os/UserHandle;
    iget-object v0, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 4626
    :try_start_27
    iget-object v0, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    .line 4627
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 4628
    .local v0, "providerEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_31
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_d0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v9, v1

    .line 4630
    .local v9, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-object v10, v1

    .line 4631
    .local v10, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    move-object v11, v1

    .line 4632
    .local v11, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    invoke-direct {v15, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->countPendingUpdates(Ljava/util/ArrayList;)I

    move-result v1

    move v12, v1

    .line 4634
    .local v12, "pending":I
    const-string v1, "BackupRestoreController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " pending: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4636
    if-lez v12, :cond_ce

    .line 4637
    new-array v1, v12, [I

    move-object v13, v1

    .line 4638
    .local v13, "oldIds":[I
    new-array v1, v12, [I

    move-object/from16 v17, v1

    .line 4639
    .local v17, "newIds":[I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v6, v1

    .line 4640
    .local v6, "N":I
    const/4 v1, 0x0

    .line 4641
    .local v1, "nextPending":I
    move/from16 v18, v1

    const/4 v2, 0x0

    .line 4641
    .end local v1    # "nextPending":I
    .local v2, "i":I
    .local v18, "nextPending":I
    :goto_82
    move v1, v2

    .line 4641
    .end local v2    # "i":I
    .local v1, "i":I
    if-ge v1, v6, :cond_c1

    .line 4642
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    .line 4643
    .local v2, "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    iget-boolean v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    if-nez v4, :cond_bd

    .line 4644
    iput-boolean v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    .line 4645
    iget v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    aput v4, v13, v18

    .line 4646
    iget v4, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    aput v4, v17, v18

    .line 4647
    add-int/lit8 v18, v18, 0x1

    .line 4649
    const-string v4, "BackupRestoreController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4641
    .end local v2    # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_bd
    add-int/lit8 v2, v1, 0x1

    .line 4641
    .end local v1    # "i":I
    .local v2, "i":I
    const/4 v3, 0x1

    goto :goto_82

    .line 4653
    .end local v2    # "i":I
    :cond_c1
    const-string v2, "android.appwidget.action.APPWIDGET_RESTORED"

    const/4 v4, 0x0

    move-object v1, v15

    move-object v3, v10

    move-object v5, v13

    move/from16 v19, v6

    move-object/from16 v6, v17

    .line 4653
    .end local v6    # "N":I
    .local v19, "N":I
    invoke-direct/range {v1 .. v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->sendWidgetRestoreBroadcastLocked(Ljava/lang/String;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;[I[ILandroid/os/UserHandle;)V

    .line 4657
    .end local v9    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    .end local v10    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v11    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    .end local v12    # "pending":I
    .end local v13    # "oldIds":[I
    .end local v17    # "newIds":[I
    .end local v18    # "nextPending":I
    .end local v19    # "N":I
    :cond_ce
    goto/16 :goto_31

    .line 4660
    :cond_d0
    iget-object v1, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    .line 4661
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 4662
    .local v1, "hostEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_da
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_185

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4663
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4664
    .local v5, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    const/4 v8, -0x1

    if-eq v6, v8, :cond_180

    .line 4665
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 4666
    .local v6, "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    invoke-direct {v15, v6}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->countPendingUpdates(Ljava/util/ArrayList;)I

    move-result v8

    move v13, v8

    .line 4668
    .local v13, "pending":I
    const-string v8, "BackupRestoreController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Host "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " pending: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4670
    if-lez v13, :cond_180

    .line 4671
    new-array v8, v13, [I

    move-object/from16 v17, v8

    .line 4672
    .local v17, "oldIds":[I
    new-array v8, v13, [I

    move-object/from16 v18, v8

    .line 4673
    .local v18, "newIds":[I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v12, v8

    .line 4674
    .local v12, "N":I
    const/4 v8, 0x0

    .line 4675
    .local v8, "nextPending":I
    move/from16 v20, v8

    const/4 v8, 0x0

    .line 4675
    .local v8, "i":I
    .local v20, "nextPending":I
    :goto_12f
    if-ge v8, v12, :cond_16d

    .line 4676
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;

    .line 4677
    .local v9, "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    iget-boolean v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    if-nez v10, :cond_16a

    .line 4678
    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->notified:Z

    .line 4679
    iget v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    aput v10, v17, v20

    .line 4680
    iget v10, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    aput v10, v18, v20

    .line 4681
    add-int/lit8 v20, v20, 0x1

    .line 4683
    const-string v10, "BackupRestoreController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "   "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->oldId:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " => "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;->newId:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4675
    .end local v9    # "r":Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;
    :cond_16a
    add-int/lit8 v8, v8, 0x1

    goto :goto_12f

    .line 4687
    .end local v8    # "i":I
    :cond_16d
    const-string v9, "android.appwidget.action.APPWIDGET_HOST_RESTORED"

    const/4 v10, 0x0

    move-object v8, v15

    const/4 v2, 0x1

    move-object v11, v5

    move/from16 v19, v12

    move-object/from16 v12, v17

    .line 4687
    .end local v12    # "N":I
    .restart local v19    # "N":I
    move/from16 v21, v13

    move-object/from16 v13, v18

    .line 4687
    .end local v13    # "pending":I
    .local v21, "pending":I
    move-object v14, v7

    invoke-direct/range {v8 .. v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->sendWidgetRestoreBroadcastLocked(Ljava/lang/String;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;[I[ILandroid/os/UserHandle;)V

    .line 4687
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;"
    .end local v5    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v6    # "updates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;"
    .end local v17    # "oldIds":[I
    .end local v18    # "newIds":[I
    .end local v19    # "N":I
    .end local v20    # "nextPending":I
    .end local v21    # "pending":I
    goto :goto_181

    .line 4692
    :cond_180
    const/4 v2, 0x1

    .line 4662
    :goto_181
    move/from16 v14, p1

    goto/16 :goto_da

    .line 4693
    .end local v0    # "providerEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;>;"
    .end local v1    # "hostEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController$RestoreUpdateRecord;>;>;>;"
    :cond_185
    monitor-exit v16

    .line 4694
    return-void

    .line 4693
    :catchall_187
    move-exception v0

    monitor-exit v16
    :try_end_189
    .catchall {:try_start_27 .. :try_end_189} :catchall_187

    throw v0
.end method

.method public restoreStarting(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 4447
    const-string v0, "BackupRestoreController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore starting for user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4450
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4454
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mPrunedApps:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 4455
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByProvider:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4456
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->mUpdatesByHost:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4457
    monitor-exit v0

    .line 4458
    return-void

    .line 4457
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public restoreWidgetState(Ljava/lang/String;[BI)V
    .registers 26
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "restoredState"    # [B
    .param p3, "userId"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 4462
    move/from16 v3, p3

    const-string v0, "BackupRestoreController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restoring widget state for user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4466
    new-instance v0, Ljava/io/ByteArrayInputStream;

    move-object/from16 v4, p2

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v5, v0

    .line 4469
    .local v5, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_2c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 4472
    .local v6, "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 4474
    .local v7, "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v8, v0

    .line 4475
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4477
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_4d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_4d} :catch_2d4
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_4d} :catch_2d4
    .catchall {:try_start_2c .. :try_end_4d} :catchall_2d0

    .line 4480
    :goto_4d
    :try_start_4d
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 4481
    .local v0, "type":I
    const/4 v11, 0x2

    if-ne v0, v11, :cond_2ae

    .line 4482
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 4483
    .local v12, "tag":Ljava/lang/String;
    const-string/jumbo v13, "ws"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_5f
    .catchall {:try_start_4d .. :try_end_5f} :catchall_2c3

    const/4 v14, 0x0

    if-eqz v13, :cond_b9

    .line 4484
    :try_start_62
    const-string/jumbo v13, "version"

    invoke-interface {v8, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4486
    .local v13, "version":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 4487
    .local v15, "versionNumber":I
    if-le v15, v11, :cond_8c

    .line 4488
    const-string v10, "BackupRestoreController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to process state version "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4489
    monitor-exit v9
    :try_end_86
    .catchall {:try_start_62 .. :try_end_86} :catchall_b0

    .line 4611
    iget-object v9, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V
    invoke-static {v9, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$4000(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 4489
    return-void

    .line 4493
    :cond_8c
    :try_start_8c
    const-string/jumbo v11, "pkg"

    invoke-interface {v8, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4494
    .local v11, "pkg":Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a7

    .line 4495
    const-string v10, "BackupRestoreController"

    const-string v14, "Package mismatch in ws"

    invoke-static {v10, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4496
    monitor-exit v9
    :try_end_a1
    .catchall {:try_start_8c .. :try_end_a1} :catchall_b0

    .line 4611
    iget-object v9, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V
    invoke-static {v9, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$4000(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 4496
    return-void

    .line 4498
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v13    # "version":Ljava/lang/String;
    .end local v15    # "versionNumber":I
    :cond_a7
    nop

    .line 4599
    move-object/from16 v17, v5

    .line 4599
    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .end local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .end local v12    # "tag":Ljava/lang/String;
    .local v17, "stream":Ljava/io/ByteArrayInputStream;
    .local v20, "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .local v21, "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :goto_aa
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    goto/16 :goto_2b4

    .line 4607
    .end local v0    # "type":I
    .end local v17    # "stream":Ljava/io/ByteArrayInputStream;
    .end local v20    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v21    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :catchall_b0
    move-exception v0

    move-object/from16 v17, v5

    .line 4607
    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .end local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v17    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v20    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v21    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :goto_b3
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    goto/16 :goto_2ca

    .line 4498
    .end local v17    # "stream":Ljava/io/ByteArrayInputStream;
    .end local v20    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v21    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v0    # "type":I
    .restart local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v12    # "tag":Ljava/lang/String;
    :cond_b9
    :try_start_b9
    const-string/jumbo v11, "p"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_c0
    .catchall {:try_start_b9 .. :try_end_c0} :catchall_2c3

    if-eqz v11, :cond_12b

    .line 4499
    :try_start_c2
    const-string/jumbo v11, "pkg"

    invoke-interface {v8, v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4500
    .restart local v11    # "pkg":Ljava/lang/String;
    const-string v13, "cl"

    invoke-interface {v8, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 4508
    .local v13, "cl":Ljava/lang/String;
    new-instance v15, Landroid/content/ComponentName;

    invoke-direct {v15, v11, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4510
    .local v15, "componentName":Landroid/content/ComponentName;
    invoke-direct {v1, v15, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->findProviderLocked(Landroid/content/ComponentName;I)Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    move-result-object v16

    .line 4511
    .local v16, "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    if-nez v16, :cond_102

    .line 4512
    new-instance v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-direct {v10, v14}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 4513
    .end local v16    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .local v10, "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    new-instance v14, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;
    :try_end_e1
    .catchall {:try_start_c2 .. :try_end_e1} :catchall_122

    const/4 v4, -0x1

    move-object/from16 v17, v5

    const/4 v5, 0x0

    :try_start_e5
    invoke-direct {v14, v4, v15, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;-><init>(ILandroid/content/ComponentName;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 4513
    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v17    # "stream":Ljava/io/ByteArrayInputStream;
    iput-object v14, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 4514
    new-instance v4, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v4}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    iput-object v4, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 4515
    iget-object v4, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v15, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 4516
    const/4 v4, 0x1

    iput-boolean v4, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    .line 4517
    iget-object v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # getter for: Lcom/android/server/appwidget/AppWidgetServiceImpl;->mProviders:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_106

    .line 4520
    .end local v10    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v17    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v16    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_102
    move-object/from16 v17, v5

    move-object/from16 v10, v16

    .line 4520
    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .end local v16    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v10    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v17    # "stream":Ljava/io/ByteArrayInputStream;
    :goto_106
    const-string v4, "BackupRestoreController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   provider "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v10, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4522
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_121
    .catchall {:try_start_e5 .. :try_end_121} :catchall_18e

    .line 4523
    .end local v10    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v13    # "cl":Ljava/lang/String;
    .end local v15    # "componentName":Landroid/content/ComponentName;
    goto :goto_aa

    .line 4607
    .end local v0    # "type":I
    .end local v12    # "tag":Ljava/lang/String;
    .end local v17    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "stream":Ljava/io/ByteArrayInputStream;
    :catchall_122
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 4607
    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v17    # "stream":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_2ca

    .line 4523
    .end local v17    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "type":I
    .restart local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v12    # "tag":Ljava/lang/String;
    :cond_12b
    move-object/from16 v17, v5

    .line 4523
    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v17    # "stream":Ljava/io/ByteArrayInputStream;
    :try_start_12d
    const-string/jumbo v4, "h"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_134
    .catchall {:try_start_12d .. :try_end_134} :catchall_2a8

    const/16 v5, 0x10

    if-eqz v4, :cond_191

    .line 4527
    :try_start_138
    const-string/jumbo v4, "pkg"

    const/4 v10, 0x0

    invoke-interface {v8, v10, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4529
    .local v4, "pkg":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->getUidForPackage(Ljava/lang/String;I)I
    invoke-static {v10, v4, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2300(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/lang/String;I)I

    move-result v10

    .line 4530
    .local v10, "uid":I
    const-string/jumbo v11, "id"

    .line 4531
    const/4 v13, 0x0

    invoke-interface {v8, v13, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4530
    invoke-static {v11, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 4533
    .local v5, "hostId":I
    new-instance v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-direct {v11, v10, v5, v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;-><init>(IILjava/lang/String;)V

    .line 4534
    .local v11, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    iget-object v13, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->lookupOrAddHostLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    invoke-static {v13, v11}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3800(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    move-result-object v13

    .line 4535
    .local v13, "h":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4538
    const-string v14, "BackupRestoreController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v4

    const-string v4, "   host["

    .line 4538
    .end local v4    # "pkg":Ljava/lang/String;
    .local v18, "pkg":Ljava/lang/String;
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: {"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18c
    .catchall {:try_start_138 .. :try_end_18c} :catchall_18e

    .line 4541
    .end local v5    # "hostId":I
    .end local v10    # "uid":I
    .end local v11    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;
    .end local v13    # "h":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v18    # "pkg":Ljava/lang/String;
    goto/16 :goto_aa

    .line 4607
    .end local v0    # "type":I
    .end local v12    # "tag":Ljava/lang/String;
    :catchall_18e
    move-exception v0

    goto/16 :goto_b3

    .line 4541
    .restart local v0    # "type":I
    .restart local v12    # "tag":Ljava/lang/String;
    :cond_191
    :try_start_191
    const-string v4, "g"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a3

    .line 4542
    const-string/jumbo v4, "id"

    .line 4543
    const/4 v10, 0x0

    invoke-interface {v8, v10, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4542
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 4544
    .local v4, "restoredId":I
    const-string/jumbo v10, "h"

    .line 4545
    const/4 v11, 0x0

    invoke-interface {v8, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4544
    invoke-static {v10, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 4546
    .local v10, "hostIndex":I
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4547
    .local v11, "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    const/4 v13, 0x0

    .line 4548
    .local v13, "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    const-string/jumbo v14, "p"

    const/4 v15, 0x0

    invoke-interface {v8, v15, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_1c0
    .catchall {:try_start_191 .. :try_end_1c0} :catchall_2a8

    .line 4549
    .local v14, "prov":Ljava/lang/String;
    if-eqz v14, :cond_1cd

    .line 4552
    :try_start_1c2
    invoke-static {v14, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 4553
    .local v5, "which":I
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :try_end_1cc
    .catchall {:try_start_1c2 .. :try_end_1cc} :catchall_18e

    move-object v13, v15

    .line 4559
    .end local v5    # "which":I
    :cond_1cd
    :try_start_1cd
    iget-object v5, v11, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-direct {v1, v5, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->pruneWidgetStateLocked(Ljava/lang/String;I)V
    :try_end_1d4
    .catchall {:try_start_1cd .. :try_end_1d4} :catchall_2a8

    .line 4560
    if-eqz v13, :cond_1e1

    .line 4561
    :try_start_1d6
    iget-object v5, v13, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v5, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->pruneWidgetStateLocked(Ljava/lang/String;I)V
    :try_end_1e1
    .catchall {:try_start_1d6 .. :try_end_1e1} :catchall_18e

    .line 4566
    :cond_1e1
    :try_start_1e1
    invoke-direct {v1, v4, v11, v13}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->findRestoredWidgetLocked(ILcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-result-object v5

    .line 4567
    .local v5, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    if-nez v5, :cond_243

    .line 4568
    new-instance v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    move-object/from16 v19, v5

    const/4 v5, 0x0

    invoke-direct {v15, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V

    .line 4568
    .end local v5    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .local v19, "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    move-object v5, v15

    .line 4569
    .end local v19    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v5    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v15, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->incrementAndGetAppWidgetIdLocked(I)I
    invoke-static {v15, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$3900(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)I

    move-result v15

    iput v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    .line 4570
    iput v4, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->restoredId:I

    .line 4571
    invoke-direct {v1, v8}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->parseWidgetIdOptions(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v15

    iput-object v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->options:Landroid/os/Bundle;

    .line 4572
    iput-object v11, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    .line 4573
    iget-object v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v15, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4574
    iput-object v13, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 4575
    iget-object v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :try_end_20d
    .catchall {:try_start_1e1 .. :try_end_20d} :catchall_2a8

    if-eqz v15, :cond_216

    .line 4576
    :try_start_20f
    iget-object v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v15, v15, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_216
    .catchall {:try_start_20f .. :try_end_216} :catchall_18e

    .line 4579
    :cond_216
    :try_start_216
    const-string v15, "BackupRestoreController"
    :try_end_218
    .catchall {:try_start_216 .. :try_end_218} :catchall_2a8

    move-object/from16 v20, v6

    :try_start_21a
    new-instance v6, Ljava/lang/StringBuilder;

    .line 4579
    .end local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v20    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_21f
    .catchall {:try_start_21a .. :try_end_21f} :catchall_23e

    move-object/from16 v21, v7

    :try_start_221
    const-string v7, "New restored id "

    .line 4579
    .end local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v21    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " now "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4582
    iget-object v6, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {v6, v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addWidgetLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;)V

    goto :goto_249

    .line 4607
    .end local v0    # "type":I
    .end local v4    # "restoredId":I
    .end local v5    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v10    # "hostIndex":I
    .end local v11    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v14    # "prov":Ljava/lang/String;
    .end local v21    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :catchall_23e
    move-exception v0

    move-object/from16 v21, v7

    .line 4607
    .end local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v21    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    goto/16 :goto_2ca

    .line 4584
    .end local v20    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v21    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v0    # "type":I
    .restart local v4    # "restoredId":I
    .restart local v5    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .restart local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v10    # "hostIndex":I
    .restart local v11    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .restart local v12    # "tag":Ljava/lang/String;
    .restart local v13    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .restart local v14    # "prov":Ljava/lang/String;
    :cond_243
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 4584
    .end local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v20    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v21    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :goto_249
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v6, :cond_25b

    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget-object v6, v6, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v6, :cond_25b

    .line 4585
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-direct {v1, v6, v4, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->stashProviderRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;II)V

    goto :goto_271

    .line 4588
    :cond_25b
    const-string v6, "BackupRestoreController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Missing provider for restored widget "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4590
    :goto_271
    iget-object v6, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget v7, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-direct {v1, v6, v4, v7}, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->stashHostRestoreUpdateLocked(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;II)V

    .line 4593
    const-string v6, "BackupRestoreController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "   instance: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " -> "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " :: p="

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v5, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "restoredId":I
    .end local v5    # "id":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .end local v10    # "hostIndex":I
    .end local v11    # "host":Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .end local v12    # "tag":Ljava/lang/String;
    .end local v13    # "p":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .end local v14    # "prov":Ljava/lang/String;
    goto :goto_2b4

    .line 4599
    .end local v20    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v21    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :cond_2a3
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 4599
    .end local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v20    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v21    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    goto :goto_2b4

    .line 4607
    .end local v0    # "type":I
    .end local v20    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v21    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :catchall_2a8
    move-exception v0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 4607
    .end local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v20    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v21    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    goto :goto_2ca

    .line 4599
    .end local v17    # "stream":Ljava/io/ByteArrayInputStream;
    .end local v20    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v21    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v0    # "type":I
    .local v5, "stream":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :cond_2ae
    move-object/from16 v17, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 4599
    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .end local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v17    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v20    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v21    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :goto_2b4
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2b9

    .line 4607
    .end local v0    # "type":I
    monitor-exit v9

    goto :goto_2ed

    .line 4480
    :cond_2b9
    move-object/from16 v5, v17

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v4, p2

    goto/16 :goto_4d

    .line 4607
    .end local v17    # "stream":Ljava/io/ByteArrayInputStream;
    .end local v20    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v21    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :catchall_2c3
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 4607
    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .end local v6    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v7    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v17    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v20    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v21    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :goto_2ca
    monitor-exit v9
    :try_end_2cb
    .catchall {:try_start_221 .. :try_end_2cb} :catchall_2ce

    :try_start_2cb
    throw v0
    :try_end_2cc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2cb .. :try_end_2cc} :catch_2cc
    .catch Ljava/io/IOException; {:try_start_2cb .. :try_end_2cc} :catch_2cc
    .catchall {:try_start_2cb .. :try_end_2cc} :catchall_2f4

    .line 4608
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v21    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :catch_2cc
    move-exception v0

    goto :goto_2d7

    .line 4607
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v20    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .restart local v21    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    :catchall_2ce
    move-exception v0

    goto :goto_2ca

    .line 4611
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "stream":Ljava/io/ByteArrayInputStream;
    .end local v20    # "restoredProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    .end local v21    # "restoredHosts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;>;"
    .restart local v5    # "stream":Ljava/io/ByteArrayInputStream;
    :catchall_2d0
    move-exception v0

    move-object/from16 v17, v5

    .line 4611
    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v17    # "stream":Ljava/io/ByteArrayInputStream;
    goto :goto_2f5

    .line 4608
    .end local v17    # "stream":Ljava/io/ByteArrayInputStream;
    .restart local v5    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_2d4
    move-exception v0

    move-object/from16 v17, v5

    .line 4609
    .end local v5    # "stream":Ljava/io/ByteArrayInputStream;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "stream":Ljava/io/ByteArrayInputStream;
    :goto_2d7
    :try_start_2d7
    const-string v4, "BackupRestoreController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to restore widget state for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ed
    .catchall {:try_start_2d7 .. :try_end_2ed} :catchall_2f4

    .line 4611
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2ed
    iget-object v0, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V
    invoke-static {v0, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$4000(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 4612
    nop

    .line 4613
    return-void

    .line 4611
    :catchall_2f4
    move-exception v0

    :goto_2f5
    iget-object v4, v1, Lcom/android/server/appwidget/AppWidgetServiceImpl$BackupRestoreController;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    # invokes: Lcom/android/server/appwidget/AppWidgetServiceImpl;->saveGroupStateAsync(I)V
    invoke-static {v4, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$4000(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    throw v0
.end method
