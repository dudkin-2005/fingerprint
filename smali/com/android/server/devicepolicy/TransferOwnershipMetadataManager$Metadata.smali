.class Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;
.super Ljava/lang/Object;
.source "TransferOwnershipMetadataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Metadata"
.end annotation


# instance fields
.field final adminType:Ljava/lang/String;

.field final sourceComponent:Landroid/content/ComponentName;

.field final targetComponent:Landroid/content/ComponentName;

.field final userId:I


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Landroid/content/ComponentName;ILjava/lang/String;)V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->sourceComponent:Landroid/content/ComponentName;

    .line 187
    iput-object p2, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->targetComponent:Landroid/content/ComponentName;

    .line 188
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 191
    iput p3, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->userId:I

    .line 192
    iput-object p4, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->adminType:Ljava/lang/String;

    .line 193
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 197
    invoke-static {p1}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->unflattenComponentUnchecked(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 198
    invoke-static {p2}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->unflattenComponentUnchecked(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    .line 197
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;-><init>(Landroid/content/ComponentName;Landroid/content/ComponentName;ILjava/lang/String;)V

    .line 199
    return-void
.end method

.method private static unflattenComponentUnchecked(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 0

    .line 202
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 208
    instance-of v0, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 209
    return v1

    .line 211
    :cond_0
    check-cast p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;

    .line 213
    iget v0, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->userId:I

    iget v2, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->userId:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->sourceComponent:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->sourceComponent:Landroid/content/ComponentName;

    .line 214
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->targetComponent:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->targetComponent:Landroid/content/ComponentName;

    .line 215
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->adminType:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->adminType:Ljava/lang/String;

    .line 216
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    nop

    .line 213
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 221
    nop

    .line 222
    iget v0, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->userId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 223
    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->sourceComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 224
    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->targetComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 225
    mul-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager$Metadata;->adminType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 226
    return v1
.end method
