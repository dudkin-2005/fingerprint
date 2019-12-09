.class public Lcom/android/server/am/ActivityManagerService$GrantUri;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GrantUri"
.end annotation


# instance fields
.field public prefix:Z

.field public final sourceUserId:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(ILandroid/net/Uri;Z)V
    .locals 0

    .line 1251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1252
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->sourceUserId:I

    .line 1253
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    .line 1254
    iput-boolean p3, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->prefix:Z

    .line 1255
    return-void
.end method

.method public static resolve(ILandroid/net/Uri;)Lcom/android/server/am/ActivityManagerService$GrantUri;
    .locals 2

    .line 1297
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1298
    new-instance v0, Lcom/android/server/am/ActivityManagerService$GrantUri;

    invoke-static {p1, p0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p0

    .line 1299
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/am/ActivityManagerService$GrantUri;-><init>(ILandroid/net/Uri;Z)V

    .line 1298
    return-object v0

    .line 1301
    :cond_0
    new-instance v0, Lcom/android/server/am/ActivityManagerService$GrantUri;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/am/ActivityManagerService$GrantUri;-><init>(ILandroid/net/Uri;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1268
    instance-of v0, p1, Lcom/android/server/am/ActivityManagerService$GrantUri;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1269
    check-cast p1, Lcom/android/server/am/ActivityManagerService$GrantUri;

    .line 1270
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->sourceUserId:I

    iget v2, p1, Lcom/android/server/am/ActivityManagerService$GrantUri;->sourceUserId:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->prefix:Z

    iget-boolean p1, p1, Lcom/android/server/am/ActivityManagerService$GrantUri;->prefix:Z

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 1273
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1259
    nop

    .line 1260
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->sourceUserId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 1261
    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 1262
    mul-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->prefix:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    add-int/2addr v1, v0

    .line 1263
    return v1
.end method

.method public toSafeString()Ljava/lang/String;
    .locals 2

    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->sourceUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1285
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->prefix:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [prefix]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1286
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->sourceUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1279
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->prefix:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [prefix]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1280
    :cond_0
    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    .line 1290
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1291
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1292
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$GrantUri;->sourceUserId:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1293
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1294
    return-void
.end method
