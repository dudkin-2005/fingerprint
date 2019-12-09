.class final Lcom/android/server/notification/NotificationRecord$Light;
.super Ljava/lang/Object;
.source "NotificationRecord.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Light"
.end annotation


# instance fields
.field public final color:I

.field public final offMs:I

.field public final onMs:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1176
    iput p1, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    .line 1177
    iput p2, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    .line 1178
    iput p3, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    .line 1179
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1183
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1184
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1186
    :cond_1
    check-cast p1, Lcom/android/server/notification/NotificationRecord$Light;

    .line 1188
    iget v2, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    iget v3, p1, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    if-eq v2, v3, :cond_2

    return v1

    .line 1189
    :cond_2
    iget v2, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    iget v3, p1, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    if-eq v2, v3, :cond_3

    return v1

    .line 1190
    :cond_3
    iget v2, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    iget p1, p1, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    if-ne v2, p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    return v0

    .line 1184
    :cond_5
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1196
    iget v0, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    .line 1197
    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    add-int/2addr v0, v2

    .line 1198
    mul-int/2addr v1, v0

    iget v0, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    add-int/2addr v1, v0

    .line 1199
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Light{color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", onMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
