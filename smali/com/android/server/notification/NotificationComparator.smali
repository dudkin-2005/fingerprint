.class public Lcom/android/server/notification/NotificationComparator;
.super Ljava/lang/Object;
.source "NotificationComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/notification/NotificationRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultPhoneApp:Ljava/lang/String;

.field private final mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

.field private final mPhoneAppBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Lcom/android/server/notification/NotificationComparator$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationComparator$1;-><init>(Lcom/android/server/notification/NotificationComparator;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mPhoneAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    iput-object p1, p0, Lcom/android/server/notification/NotificationComparator;->mContext:Landroid/content/Context;

    .line 43
    iget-object p1, p0, Lcom/android/server/notification/NotificationComparator;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mPhoneAppBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    new-instance p1, Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationComparator;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 46
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/notification/NotificationComparator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    return-object p1
.end method

.method private isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 1

    .line 163
    const-string v0, "call"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 164
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isDefaultPhoneApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 163
    :goto_0
    return p1
.end method

.method private isDefaultPhoneApp(Ljava/lang/String;)Z
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 171
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isImportantColorized(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2

    .line 121
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 122
    const/4 p1, 0x0

    return p1

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->isColorized()Z

    move-result p1

    return p1
.end method

.method private isImportantOngoing(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3

    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isOngoing(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 129
    return v1

    .line 132
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 133
    return v1

    .line 136
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isMediaNotification(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private isMediaNotification(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 159
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->hasMediaSession()Z

    move-result p1

    return p1
.end method

.method private isOngoing(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 0

    .line 155
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I
    .locals 5

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isImportantColorized(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    .line 52
    invoke-direct {p0, p2}, Lcom/android/server/notification/NotificationComparator;->isImportantColorized(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    .line 54
    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    mul-int/2addr v2, p1

    return v2

    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isImportantOngoing(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    .line 60
    invoke-direct {p0, p2}, Lcom/android/server/notification/NotificationComparator;->isImportantOngoing(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    .line 62
    if-eq v0, v1, :cond_1

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    mul-int/2addr v2, p1

    return v2

    .line 67
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isImportantMessaging(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    .line 68
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationComparator;->isImportantMessaging(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    .line 69
    if-eq v0, v1, :cond_2

    .line 70
    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    mul-int/2addr v2, p1

    return v2

    .line 74
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isImportantPeople(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    .line 75
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationComparator;->isImportantPeople(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    .line 76
    nop

    .line 77
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v3

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    .line 79
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 81
    if-eqz v3, :cond_4

    .line 82
    mul-int/2addr v2, v3

    return v2

    .line 84
    :cond_3
    if-eq v0, v1, :cond_4

    .line 86
    invoke-static {v0, v1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    mul-int/2addr v2, p1

    return v2

    .line 89
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    .line 90
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v1

    .line 91
    if-eq v0, v1, :cond_5

    .line 93
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    mul-int/2addr v2, p1

    return v2

    .line 97
    :cond_5
    if-eqz v3, :cond_6

    .line 98
    mul-int/2addr v2, v3

    return v2

    .line 102
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v0

    .line 103
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v1

    .line 104
    if-eq v0, v1, :cond_7

    .line 106
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    mul-int/2addr v2, p1

    return v2

    .line 109
    :cond_7
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->priority:I

    .line 110
    iget-object v1, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->priority:I

    .line 111
    if-eq v0, v1, :cond_8

    .line 113
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    mul-int/2addr v2, p1

    return v2

    .line 117
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    mul-int/2addr v2, p1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    check-cast p2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationComparator;->compare(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)I

    move-result p1

    return p1
.end method

.method protected isImportantMessaging(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isImportantMessaging(Landroid/service/notification/StatusBarNotification;I)Z

    move-result p1

    return p1
.end method

.method protected isImportantPeople(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3

    .line 140
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 141
    return v1

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 144
    const/4 p1, 0x1

    return p1

    .line 146
    :cond_1
    return v1
.end method
