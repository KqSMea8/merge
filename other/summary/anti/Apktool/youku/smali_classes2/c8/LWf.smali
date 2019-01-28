.class public Lc8/LWf;
.super Ljava/lang/Object;
.source "WXBridge.java"

# interfaces
.implements Lc8/wXf;


# static fields
.field public static final MULTIPROCESS:Z = true

.field public static final TAG:Ljava/lang/String; = "WXBridge"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callAddElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "dom"    # Ljava/lang/String;
    .param p4, "index"    # Ljava/lang/String;
    .param p5, "callback"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 170
    .local v10, "start":J
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v8

    .line 171
    .local v8, "instance":Lc8/nVf;
    if-eqz v8, :cond_0

    .line 172
    invoke-virtual {v8, v10, v11}, Lc8/nVf;->firstScreenCreateInstanceTime(J)V

    .line 174
    :cond_0
    const/4 v7, 0x1

    .line 177
    .local v7, "errorCode":I
    :try_start_0
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lc8/ZWf;->callAddElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 186
    :goto_0
    if-eqz v8, :cond_1

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v10

    invoke-virtual {v8, v0, v1}, Lc8/nVf;->callNativeTime(J)V

    .line 190
    :cond_1
    const/4 v0, -0x1

    if-ne v7, v0, :cond_2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "destroyInstance :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " JSF must stop callNative"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/xgg;->w(Ljava/lang/String;)V

    .line 194
    :cond_2
    return v7

    .line 178
    :catch_0
    move-exception v6

    .line 181
    .local v6, "e":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    const-string/jumbo v0, "WXBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "callNative throw error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callAddElement(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "dom"    # [B
    .param p4, "index"    # Ljava/lang/String;
    .param p5, "callback"    # Ljava/lang/String;

    .prologue
    .line 127
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([B)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lc8/LWf;->callAddElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public callAddEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "callback"    # Ljava/lang/String;

    .prologue
    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 471
    .local v4, "start":J
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v2

    .line 472
    .local v2, "instance":Lc8/nVf;
    if-eqz v2, :cond_0

    .line 473
    invoke-virtual {v2, v4, v5}, Lc8/nVf;->firstScreenCreateInstanceTime(J)V

    .line 475
    :cond_0
    const/4 v1, 0x1

    .line 477
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3, p4}, Lc8/ZWf;->callAddEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 484
    :goto_0
    if-eqz v2, :cond_1

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Lc8/nVf;->callNativeTime(J)V

    .line 487
    :cond_1
    return v1

    .line 478
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "WXBridge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "callAddEvent throw exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callCreateBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "tasks"    # Ljava/lang/String;
    .param p3, "callback"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 144
    .local v4, "start":J
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v2

    .line 145
    .local v2, "instance":Lc8/nVf;
    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {v2, v4, v5}, Lc8/nVf;->firstScreenCreateInstanceTime(J)V

    .line 148
    :cond_0
    const/4 v1, 0x1

    .line 150
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lc8/ZWf;->callCreateBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 157
    :goto_0
    if-eqz v2, :cond_1

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Lc8/nVf;->callNativeTime(J)V

    .line 160
    :cond_1
    return v1

    .line 151
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "WXBridge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "callCreateBody throw exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callCreateBody(Ljava/lang/String;[BLjava/lang/String;)I
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "tasks"    # [B
    .param p3, "callback"    # Ljava/lang/String;

    .prologue
    .line 139
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, p1, v0, p3}, Lc8/LWf;->callCreateBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public callCreateFinish(Ljava/lang/String;[BLjava/lang/String;)I
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "tasks"    # [B
    .param p3, "callback"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 295
    .local v4, "start":J
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v2

    .line 296
    .local v2, "instance":Lc8/nVf;
    if-eqz v2, :cond_0

    .line 297
    invoke-virtual {v2, v4, v5}, Lc8/nVf;->firstScreenCreateInstanceTime(J)V

    .line 299
    :cond_0
    const/4 v1, 0x1

    .line 301
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, Lc8/ZWf;->callCreateFinish(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 308
    :goto_0
    if-eqz v2, :cond_1

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Lc8/nVf;->callNativeTime(J)V

    .line 311
    :cond_1
    return v1

    .line 302
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "WXBridge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "callCreateFinish throw exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callMoveElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "parentref"    # Ljava/lang/String;
    .param p4, "index"    # Ljava/lang/String;
    .param p5, "callback"    # Ljava/lang/String;

    .prologue
    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 441
    .local v10, "start":J
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v8

    .line 442
    .local v8, "instance":Lc8/nVf;
    if-eqz v8, :cond_0

    .line 443
    invoke-virtual {v8, v10, v11}, Lc8/nVf;->firstScreenCreateInstanceTime(J)V

    .line 445
    :cond_0
    const/4 v7, 0x1

    .line 448
    .local v7, "errorCode":I
    :try_start_0
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lc8/ZWf;->callMoveElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 455
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    .line 456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v10

    invoke-virtual {v8, v0, v1}, Lc8/nVf;->callNativeTime(J)V

    .line 458
    :cond_2
    return v7

    .line 449
    :catch_0
    move-exception v6

    .line 451
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    const-string/jumbo v0, "WXBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "callMoveElement throw exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "tasks"    # Ljava/lang/String;
    .param p3, "callback"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 102
    .local v4, "start":J
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v2

    .line 103
    .local v2, "instance":Lc8/nVf;
    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v2, v4, v5}, Lc8/nVf;->firstScreenCreateInstanceTime(J)V

    .line 106
    :cond_0
    const/4 v1, 0x1

    .line 108
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lc8/ZWf;->callNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 116
    :goto_0
    if-eqz v2, :cond_1

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Lc8/nVf;->callNativeTime(J)V

    .line 119
    :cond_1
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 120
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "destroyInstance :"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " JSF must stop callNative"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/xgg;->w(Ljava/lang/String;)V

    .line 124
    :cond_2
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "WXBridge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "callNative throw exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callNative(Ljava/lang/String;[BLjava/lang/String;)I
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "tasks"    # [B
    .param p3, "callback"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, p1, v0, p3}, Lc8/LWf;->callNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public callNativeComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "componentRef"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arguments"    # [B
    .param p5, "options"    # [B

    .prologue
    .line 240
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lc8/AIb;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 241
    .local v4, "argArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lc8/ZWf;->callNativeComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-void
.end method

.method public callNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/lang/Object;
    .locals 7
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arguments"    # [B
    .param p5, "options"    # [B

    .prologue
    .line 221
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lc8/AIb;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 222
    .local v4, "argArray":Lcom/alibaba/fastjson/JSONArray;
    const/4 v5, 0x0

    .line 223
    .local v5, "optionsObj":Lcom/alibaba/fastjson/JSONObject;
    if-eqz p5, :cond_0

    .line 224
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 226
    :cond_0
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lc8/ZWf;->callNativeModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;Lcom/alibaba/fastjson/JSONObject;)Ljava/lang/Object;

    move-result-object v6

    .line 227
    .local v6, "object":Ljava/lang/Object;
    new-instance v0, Lc8/aXf;

    invoke-direct {v0, v6}, Lc8/aXf;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public callRefreshFinish(Ljava/lang/String;[BLjava/lang/String;)I
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "tasks"    # [B
    .param p3, "callback"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 324
    .local v4, "start":J
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v2

    .line 325
    .local v2, "instance":Lc8/nVf;
    if-eqz v2, :cond_0

    .line 326
    invoke-virtual {v2, v4, v5}, Lc8/nVf;->firstScreenCreateInstanceTime(J)V

    .line 328
    :cond_0
    const/4 v1, 0x1

    .line 330
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, Lc8/ZWf;->callRefreshFinish(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 337
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Lc8/nVf;->callNativeTime(J)V

    .line 340
    :cond_2
    return v1

    .line 331
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    const-string/jumbo v3, "WXBridge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "callCreateFinish throw exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callRemoveElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "callback"    # Ljava/lang/String;

    .prologue
    .line 410
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 411
    .local v4, "start":J
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v2

    .line 412
    .local v2, "instance":Lc8/nVf;
    if-eqz v2, :cond_0

    .line 413
    invoke-virtual {v2, v4, v5}, Lc8/nVf;->firstScreenCreateInstanceTime(J)V

    .line 415
    :cond_0
    const/4 v1, 0x1

    .line 417
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lc8/ZWf;->callRemoveElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 424
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Lc8/nVf;->callNativeTime(J)V

    .line 427
    :cond_2
    return v1

    .line 418
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 421
    const-string/jumbo v3, "WXBridge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "callRemoveElement throw exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callRemoveEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "callback"    # Ljava/lang/String;

    .prologue
    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 500
    .local v4, "start":J
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v2

    .line 501
    .local v2, "instance":Lc8/nVf;
    if-eqz v2, :cond_0

    .line 502
    invoke-virtual {v2, v4, v5}, Lc8/nVf;->firstScreenCreateInstanceTime(J)V

    .line 504
    :cond_0
    const/4 v1, 0x1

    .line 506
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3, p4}, Lc8/ZWf;->callRemoveEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 513
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Lc8/nVf;->callNativeTime(J)V

    .line 516
    :cond_2
    return v1

    .line 507
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 510
    const-string/jumbo v3, "WXBridge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "callRemoveEvent throw exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callUpdateAttrs(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "tasks"    # [B
    .param p4, "callback"    # Ljava/lang/String;

    .prologue
    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 353
    .local v4, "start":J
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v2

    .line 354
    .local v2, "instance":Lc8/nVf;
    if-eqz v2, :cond_0

    .line 355
    invoke-virtual {v2, v4, v5}, Lc8/nVf;->firstScreenCreateInstanceTime(J)V

    .line 357
    :cond_0
    const/4 v1, 0x1

    .line 359
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v3

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, p1, p2, v6, p4}, Lc8/ZWf;->callUpdateAttrs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 366
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Lc8/nVf;->callNativeTime(J)V

    .line 369
    :cond_2
    return v1

    .line 360
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 363
    const-string/jumbo v3, "WXBridge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "callUpdateAttrs throw exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callUpdateFinish(Ljava/lang/String;[BLjava/lang/String;)I
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "tasks"    # [B
    .param p3, "callback"    # Ljava/lang/String;

    .prologue
    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 265
    .local v4, "start":J
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v2

    .line 266
    .local v2, "instance":Lc8/nVf;
    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {v2, v4, v5}, Lc8/nVf;->firstScreenCreateInstanceTime(J)V

    .line 269
    :cond_0
    const/4 v1, 0x1

    .line 271
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, Lc8/ZWf;->callUpdateFinish(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 278
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Lc8/nVf;->callNativeTime(J)V

    .line 281
    :cond_2
    return v1

    .line 272
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    const-string/jumbo v3, "WXBridge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "callCreateBody throw exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callUpdateStyle(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I
    .locals 8
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "tasks"    # [B
    .param p4, "callback"    # Ljava/lang/String;

    .prologue
    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 382
    .local v4, "start":J
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v2

    .line 383
    .local v2, "instance":Lc8/nVf;
    if-eqz v2, :cond_0

    .line 384
    invoke-virtual {v2, v4, v5}, Lc8/nVf;->firstScreenCreateInstanceTime(J)V

    .line 386
    :cond_0
    const/4 v1, 0x1

    .line 388
    .local v1, "errorCode":I
    :try_start_0
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v3

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, p1, p2, v6, p4}, Lc8/ZWf;->callUpdateStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 395
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v2, v6, v7}, Lc8/nVf;->callNativeTime(J)V

    .line 398
    :cond_2
    return v1

    .line 389
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 392
    const-string/jumbo v3, "WXBridge"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "callUpdateStyle throw exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public native execJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lc8/aXf;)I
.end method

.method public native execJSService(Ljava/lang/String;)I
.end method

.method public native initFramework(Ljava/lang/String;Lc8/dXf;)I
.end method

.method public native initFramework(Ljava/lang/String;Lc8/dXf;Ljava/lang/String;Z)I
.end method

.method public initFrameworkEnv(Ljava/lang/String;Lc8/dXf;Ljava/lang/String;Z)I
    .locals 1
    .param p1, "framework"    # Ljava/lang/String;
    .param p2, "params"    # Lc8/dXf;
    .param p3, "cacheDir"    # Ljava/lang/String;
    .param p4, "pieSupport"    # Z

    .prologue
    .line 83
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/LWf;->initFramework(Ljava/lang/String;Lc8/dXf;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public reportJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;
    .param p3, "exception"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lc8/ZWf;->reportJSException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public reportServerCrash(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "crashFile"    # Ljava/lang/String;

    .prologue
    .line 520
    const-string/jumbo v1, "WXBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportServerCrash instanceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :try_start_0
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lc8/ZWf;->callReportCrashReloadPage(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    const-string/jumbo v1, "WXBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reloadPageNative throw exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setJSFrmVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    sput-object p1, Lc8/UUf;->JS_LIB_SDK_VERSION:Ljava/lang/String;

    .line 252
    :cond_0
    return-void
.end method

.method public setTimeoutNative(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "callbackId"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/ZWf;->setTimeout(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public native takeHeapSnapshot(Ljava/lang/String;)V
.end method
