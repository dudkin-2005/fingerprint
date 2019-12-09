.class final Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;
.super Landroid/os/Handler;
.source "AbstractAccessibilityServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InvocationHandler"
.end annotation


# static fields
.field public static final MSG_CLEAR_ACCESSIBILITY_CACHE:I = 0x2

.field private static final MSG_ON_ACCESSIBILITY_BUTTON_AVAILABILITY_CHANGED:I = 0x8

.field private static final MSG_ON_ACCESSIBILITY_BUTTON_CLICKED:I = 0x7

.field public static final MSG_ON_GESTURE:I = 0x1

.field private static final MSG_ON_MAGNIFICATION_CHANGED:I = 0x5

.field private static final MSG_ON_SOFT_KEYBOARD_STATE_CHANGED:I = 0x6


# instance fields
.field private mIsMagnificationCallbackEnabled:Z

.field private mIsSoftKeyboardCallbackEnabled:Z

.field final synthetic this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/os/Looper;)V
    .locals 1

    .line 1259
    iput-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    .line 1260
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1256
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    .line 1257
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    .line 1261
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;)Z
    .locals 0

    .line 1247
    iget-boolean p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    return p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1265
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1266
    packed-switch v0, :pswitch_data_0

    .line 1301
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1296
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1297
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$700(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Z)V

    .line 1298
    goto :goto_1

    .line 1292
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$600(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 1293
    goto :goto_1

    .line 1287
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1288
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$500(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V

    .line 1289
    goto :goto_1

    .line 1277
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1278
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Region;

    .line 1279
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1280
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1281
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 1282
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$400(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;Landroid/graphics/Region;FFF)V

    .line 1283
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1284
    goto :goto_1

    .line 1273
    :pswitch_5
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$300(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)V

    .line 1274
    goto :goto_1

    .line 1268
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1269
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->this$0:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;

    invoke-static {v0, p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->access$200(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)V

    .line 1270
    nop

    .line 1304
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public notifyAccessibilityButtonAvailabilityChangedLocked(Z)V
    .locals 2

    .line 1346
    nop

    .line 1347
    const/4 v0, 0x0

    .line 1346
    const/16 v1, 0x8

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1348
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1349
    return-void
.end method

.method public notifyAccessibilityButtonClickedLocked()V
    .locals 1

    .line 1341
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1342
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1343
    return-void
.end method

.method public notifyMagnificationChangedLocked(Landroid/graphics/Region;FFF)V
    .locals 1

    .line 1308
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    if-nez v0, :cond_0

    .line 1310
    return-void

    .line 1313
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1314
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1315
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1316
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1317
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 1319
    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1320
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1321
    return-void
.end method

.method public notifySoftKeyboardShowModeChangedLocked(I)V
    .locals 2

    .line 1328
    iget-boolean v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    if-nez v0, :cond_0

    .line 1329
    return-void

    .line 1332
    :cond_0
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1333
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1334
    return-void
.end method

.method public setMagnificationCallbackEnabled(Z)V
    .locals 0

    .line 1324
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsMagnificationCallbackEnabled:Z

    .line 1325
    return-void
.end method

.method public setSoftKeyboardCallbackEnabled(Z)V
    .locals 0

    .line 1337
    iput-boolean p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;->mIsSoftKeyboardCallbackEnabled:Z

    .line 1338
    return-void
.end method
