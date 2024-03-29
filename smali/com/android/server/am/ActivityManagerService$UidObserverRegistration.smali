.class final Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UidObserverRegistration"
.end annotation


# static fields
.field private static ORIG_ENUMS:[I

.field private static PROTO_ENUMS:[I


# instance fields
.field final cutpoint:I

.field final lastProcStates:Landroid/util/SparseIntArray;

.field mMaxDispatchTime:I

.field mSlowDispatchCount:I

.field final pkg:Ljava/lang/String;

.field final uid:I

.field final which:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1956
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_10

    sput-object v1, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->ORIG_ENUMS:[I

    .line 1962
    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->PROTO_ENUMS:[I

    return-void

    :array_10
    .array-data 4
        0x4
        0x8
        0x2
        0x1
    .end array-data

    :array_1c
    .array-data 4
        0x3
        0x4
        0x2
        0x1
    .end array-data
.end method

.method constructor <init>(ILjava/lang/String;II)V
    .registers 6
    .param p1, "_uid"    # I
    .param p2, "_pkg"    # Ljava/lang/String;
    .param p3, "_which"    # I
    .param p4, "_cutpoint"    # I

    .line 1969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1970
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->uid:I

    .line 1971
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->pkg:Ljava/lang/String;

    .line 1972
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->which:I

    .line 1973
    iput p4, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->cutpoint:I

    .line 1974
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->cutpoint:I

    if-ltz v0, :cond_17

    .line 1975
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->lastProcStates:Landroid/util/SparseIntArray;

    goto :goto_1a

    .line 1977
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->lastProcStates:Landroid/util/SparseIntArray;

    .line 1979
    :goto_1a
    return-void
.end method


# virtual methods
.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 17
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    move-object v0, p0

    move-object v7, p1

    .line 1982
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 1983
    .local v8, "token":J
    iget v1, v0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->uid:I

    const-wide v10, 0x10500000001L

    invoke-virtual {v7, v10, v11, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1984
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->pkg:Ljava/lang/String;

    const-wide v2, 0x10900000002L

    invoke-virtual {v7, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1985
    iget v4, v0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->which:I

    sget-object v5, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->ORIG_ENUMS:[I

    sget-object v6, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->PROTO_ENUMS:[I

    const-wide v2, 0x20e00000003L

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V

    .line 1987
    iget v1, v0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->cutpoint:I

    const-wide v2, 0x10500000004L

    invoke-virtual {v7, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1988
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->lastProcStates:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_66

    .line 1989
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->lastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 1990
    .local v1, "NI":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3e
    if-ge v2, v1, :cond_66

    .line 1991
    const-wide v3, 0x20b00000005L

    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1992
    .local v3, "pToken":J
    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->lastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v7, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1993
    const-wide v5, 0x10500000002L

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$UidObserverRegistration;->lastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v12

    invoke-virtual {v7, v5, v6, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1994
    invoke-virtual {v7, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1990
    .end local v3    # "pToken":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 1997
    .end local v1    # "NI":I
    .end local v2    # "i":I
    :cond_66
    invoke-virtual {v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1998
    return-void
.end method
