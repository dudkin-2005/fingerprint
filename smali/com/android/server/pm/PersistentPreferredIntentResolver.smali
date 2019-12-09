.class public Lcom/android/server/pm/PersistentPreferredIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PersistentPreferredIntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver<",
        "Lcom/android/server/pm/PersistentPreferredActivity;",
        "Lcom/android/server/pm/PersistentPreferredActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .locals 0

    .line 21
    check-cast p2, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/PersistentPreferredActivity;)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/PersistentPreferredActivity;)Z
    .locals 0

    .line 30
    iget-object p2, p2, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->newArray(I)[Lcom/android/server/pm/PersistentPreferredActivity;

    move-result-object p1

    return-object p1
.end method

.method protected newArray(I)[Lcom/android/server/pm/PersistentPreferredActivity;
    .locals 0

    .line 25
    new-array p1, p1, [Lcom/android/server/pm/PersistentPreferredActivity;

    return-object p1
.end method
