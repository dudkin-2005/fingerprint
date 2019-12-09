.class Lcom/android/server/StorageManagerService$3;
.super Landroid/os/IVoldListener$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;

    .line 1063
    iput-object p1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/os/IVoldListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiskCreated(Ljava/lang/String;I)V
    .registers 8
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 1066
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1067
    :try_start_7
    const-string/jumbo v1, "persist.sys.adoptable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1068
    .local v1, "value":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x1bb67bb3

    if-eq v3, v4, :cond_28

    const v4, 0x5b18fa1b

    if-eq v3, v4, :cond_1e

    goto :goto_31

    :cond_1e
    const-string v3, "force_off"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v2, 0x1

    goto :goto_31

    :cond_28
    const-string v3, "force_on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v2, 0x0

    :cond_31
    :goto_31
    packed-switch v2, :pswitch_data_50

    goto :goto_3b

    .line 1073
    :pswitch_35
    and-int/lit8 p2, p2, -0x2

    goto :goto_3b

    .line 1070
    :pswitch_38
    or-int/lit8 p2, p2, 0x1

    .line 1071
    nop

    .line 1076
    :goto_3b
    iget-object v2, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;
    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$2300(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    new-instance v3, Landroid/os/storage/DiskInfo;

    invoke-direct {v3, p1, p2}, Landroid/os/storage/DiskInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    .end local v1    # "value":Ljava/lang/String;
    monitor-exit v0

    .line 1078
    return-void

    .line 1077
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_4b

    throw v1

    nop

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_38
        :pswitch_35
    .end packed-switch
.end method

.method public onDiskDestroyed(Ljava/lang/String;)V
    .registers 5
    .param p1, "diskId"    # Ljava/lang/String;

    .line 1105
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1106
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2300(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 1107
    .local v1, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v1, :cond_1e

    .line 1108
    iget-object v2, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mCallbacks:Lcom/android/server/StorageManagerService$Callbacks;
    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$2500(Lcom/android/server/StorageManagerService;)Lcom/android/server/StorageManagerService$Callbacks;

    move-result-object v2

    # invokes: Lcom/android/server/StorageManagerService$Callbacks;->notifyDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    invoke-static {v2, v1}, Lcom/android/server/StorageManagerService$Callbacks;->access$2600(Lcom/android/server/StorageManagerService$Callbacks;Landroid/os/storage/DiskInfo;)V

    .line 1110
    .end local v1    # "disk":Landroid/os/storage/DiskInfo;
    :cond_1e
    monitor-exit v0

    .line 1111
    return-void

    .line 1110
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public onDiskMetadataChanged(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "diskId"    # Ljava/lang/String;
    .param p2, "sizeBytes"    # J
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "sysPath"    # Ljava/lang/String;

    .line 1093
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1094
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2300(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 1095
    .local v1, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v1, :cond_1b

    .line 1096
    iput-wide p2, v1, Landroid/os/storage/DiskInfo;->size:J

    .line 1097
    iput-object p4, v1, Landroid/os/storage/DiskInfo;->label:Ljava/lang/String;

    .line 1098
    iput-object p5, v1, Landroid/os/storage/DiskInfo;->sysPath:Ljava/lang/String;

    .line 1100
    .end local v1    # "disk":Landroid/os/storage/DiskInfo;
    :cond_1b
    monitor-exit v0

    .line 1101
    return-void

    .line 1100
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public onDiskScanned(Ljava/lang/String;)V
    .registers 5
    .param p1, "diskId"    # Ljava/lang/String;

    .line 1082
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1083
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2300(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 1084
    .local v1, "disk":Landroid/os/storage/DiskInfo;
    if-eqz v1, :cond_1a

    .line 1085
    iget-object v2, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->onDiskScannedLocked(Landroid/os/storage/DiskInfo;)V
    invoke-static {v2, v1}, Lcom/android/server/StorageManagerService;->access$2400(Lcom/android/server/StorageManagerService;Landroid/os/storage/DiskInfo;)V

    .line 1087
    .end local v1    # "disk":Landroid/os/storage/DiskInfo;
    :cond_1a
    monitor-exit v0

    .line 1088
    return-void

    .line 1087
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public onVolumeCreated(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "diskId"    # Ljava/lang/String;
    .param p4, "partGuid"    # Ljava/lang/String;

    .line 1115
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1116
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mDisks:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$2300(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/DiskInfo;

    .line 1117
    .local v1, "disk":Landroid/os/storage/DiskInfo;
    new-instance v2, Landroid/os/storage/VolumeInfo;

    invoke-direct {v2, p1, p2, v1, p4}, Landroid/os/storage/VolumeInfo;-><init>(Ljava/lang/String;ILandroid/os/storage/DiskInfo;Ljava/lang/String;)V

    .line 1118
    .local v2, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v3, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;
    invoke-static {v3}, Lcom/android/server/StorageManagerService;->access$1800(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    iget-object v3, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->onVolumeCreatedLocked(Landroid/os/storage/VolumeInfo;)V
    invoke-static {v3, v2}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)V

    .line 1120
    .end local v1    # "disk":Landroid/os/storage/DiskInfo;
    .end local v2    # "vol":Landroid/os/storage/VolumeInfo;
    monitor-exit v0

    .line 1121
    return-void

    .line 1120
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public onVolumeDestroyed(Ljava/lang/String;)V
    .registers 4
    .param p1, "volId"    # Ljava/lang/String;

    .line 1171
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1172
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$1800(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    monitor-exit v0

    .line 1174
    return-void

    .line 1173
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public onVolumeInternalPathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "internalPath"    # Ljava/lang/String;

    .line 1161
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1162
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$1800(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1163
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_17

    .line 1164
    iput-object p2, v1, Landroid/os/storage/VolumeInfo;->internalPath:Ljava/lang/String;

    .line 1166
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_17
    monitor-exit v0

    .line 1167
    return-void

    .line 1166
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public onVolumeMetadataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "fsType"    # Ljava/lang/String;
    .param p3, "fsUuid"    # Ljava/lang/String;
    .param p4, "fsLabel"    # Ljava/lang/String;

    .line 1139
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1140
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$1800(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1141
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_1b

    .line 1142
    iput-object p2, v1, Landroid/os/storage/VolumeInfo;->fsType:Ljava/lang/String;

    .line 1143
    iput-object p3, v1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    .line 1144
    iput-object p4, v1, Landroid/os/storage/VolumeInfo;->fsLabel:Ljava/lang/String;

    .line 1146
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1b
    monitor-exit v0

    .line 1147
    return-void

    .line 1146
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public onVolumePathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 1151
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1152
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$1800(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1153
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_17

    .line 1154
    iput-object p2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 1156
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_17
    monitor-exit v0

    .line 1157
    return-void

    .line 1156
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public onVolumeStateChanged(Ljava/lang/String;I)V
    .registers 8
    .param p1, "volId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 1125
    iget-object v0, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2200(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1126
    :try_start_7
    iget-object v1, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # getter for: Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;
    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$1800(Lcom/android/server/StorageManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 1127
    .local v1, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_1f

    .line 1128
    iget v2, v1, Landroid/os/storage/VolumeInfo;->state:I

    .line 1129
    .local v2, "oldState":I
    move v3, p2

    .line 1130
    .local v3, "newState":I
    iput v3, v1, Landroid/os/storage/VolumeInfo;->state:I

    .line 1131
    iget-object v4, p0, Lcom/android/server/StorageManagerService$3;->this$0:Lcom/android/server/StorageManagerService;

    # invokes: Lcom/android/server/StorageManagerService;->onVolumeStateChangedLocked(Landroid/os/storage/VolumeInfo;II)V
    invoke-static {v4, v1, v2, v3}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;II)V

    .line 1133
    .end local v1    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v2    # "oldState":I
    .end local v3    # "newState":I
    :cond_1f
    monitor-exit v0

    .line 1134
    return-void

    .line 1133
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1
.end method
