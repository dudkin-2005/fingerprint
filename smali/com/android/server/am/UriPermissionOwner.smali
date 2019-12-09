.class final Lcom/android/server/am/UriPermissionOwner;
.super Ljava/lang/Object;
.source "UriPermissionOwner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UriPermissionOwner$ExternalToken;
    }
.end annotation


# instance fields
.field externalToken:Landroid/os/Binder;

.field private mReadPerms:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/UriPermission;",
            ">;"
        }
    .end annotation
.end field

.field private mWritePerms:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/UriPermission;",
            ">;"
        }
    .end annotation
.end field

.field final owner:Ljava/lang/Object;

.field final service:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/Object;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    .line 47
    iput-object p2, p0, Lcom/android/server/am/UriPermissionOwner;->owner:Ljava/lang/Object;

    .line 48
    return-void
.end method

.method static fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/am/UriPermissionOwner;
    .locals 1

    .line 58
    instance-of v0, p0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;

    if-eqz v0, :cond_0

    .line 59
    check-cast p0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;

    invoke-virtual {p0}, Lcom/android/server/am/UriPermissionOwner$ExternalToken;->getOwner()Lcom/android/server/am/UriPermissionOwner;

    move-result-object p0

    return-object p0

    .line 61
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addReadPermission(Lcom/android/server/am/UriPermission;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public addWritePermission(Lcom/android/server/am/UriPermission;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "readUriPermissions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "writeUriPermissions="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 141
    :cond_1
    return-void
.end method

.method getExternalTokenLocked()Landroid/os/Binder;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/android/server/am/UriPermissionOwner$ExternalToken;

    invoke-direct {v0, p0}, Lcom/android/server/am/UriPermissionOwner$ExternalToken;-><init>(Lcom/android/server/am/UriPermissionOwner;)V

    iput-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->externalToken:Landroid/os/Binder;

    return-object v0
.end method

.method public removeReadPermission(Lcom/android/server/am/UriPermission;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 122
    iget-object p1, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 125
    :cond_0
    return-void
.end method

.method removeUriPermissionLocked(Lcom/android/server/am/ActivityManagerService$GrantUri;I)V
    .locals 4

    .line 74
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 77
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UriPermission;

    .line 79
    if-eqz p1, :cond_0

    iget-object v3, v2, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    invoke-virtual {p1, v3}, Lcom/android/server/am/ActivityManagerService$GrantUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    :cond_0
    invoke-virtual {v2, p0}, Lcom/android/server/am/UriPermission;->removeReadOwner(Lcom/android/server/am/UriPermissionOwner;)V

    .line 81
    iget-object v3, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/am/UriPermission;)V

    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 84
    :cond_1
    goto :goto_0

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    iput-object v1, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    .line 89
    :cond_3
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz p2, :cond_7

    .line 91
    iget-object p2, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 92
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 93
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UriPermission;

    .line 94
    if-eqz p1, :cond_4

    iget-object v2, v0, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    invoke-virtual {p1, v2}, Lcom/android/server/am/ActivityManagerService$GrantUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 95
    :cond_4
    invoke-virtual {v0, p0}, Lcom/android/server/am/UriPermission;->removeWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V

    .line 96
    iget-object v2, p0, Lcom/android/server/am/UriPermissionOwner;->service:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/am/UriPermission;)V

    .line 97
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 99
    :cond_5
    goto :goto_1

    .line 100
    :cond_6
    iget-object p1, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 101
    iput-object v1, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 104
    :cond_7
    return-void
.end method

.method removeUriPermissionsLocked()V
    .locals 1

    .line 65
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionsLocked(I)V

    .line 67
    return-void
.end method

.method removeUriPermissionsLocked(I)V
    .locals 1

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/UriPermissionOwner;->removeUriPermissionLocked(Lcom/android/server/am/ActivityManagerService$GrantUri;I)V

    .line 71
    return-void
.end method

.method public removeWritePermission(Lcom/android/server/am/UriPermission;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 129
    iget-object p1, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    .line 132
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->owner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    .line 144
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 145
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->owner:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UriPermissionOwner;->mReadPerms:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UriPermission;

    .line 149
    iget-object v2, v2, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    const-wide v3, 0x20b00000002L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/ActivityManagerService$GrantUri;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 150
    goto :goto_0

    .line 151
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 153
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    monitor-enter v0

    .line 155
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/UriPermissionOwner;->mWritePerms:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UriPermission;

    .line 156
    iget-object v2, v2, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    const-wide v3, 0x20b00000003L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/am/ActivityManagerService$GrantUri;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 157
    goto :goto_2

    .line 158
    :cond_2
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 160
    :cond_3
    :goto_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 161
    return-void
.end method
