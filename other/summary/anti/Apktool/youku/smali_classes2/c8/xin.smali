.class public Lc8/xin;
.super Ljava/lang/Object;
.source "SubscribeManager.java"

# interfaces
.implements Lc8/win;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public varargs create(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;[Ljava/lang/String;)V
    .locals 9
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/vin;
    .param p6, "isShowTips"    # Z
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "iconUrl"    # [Ljava/lang/String;

    .prologue
    .line 93
    new-instance v0, Lc8/bok;

    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/bok;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lc8/bok;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;[Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public varargs create(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;Z[Ljava/lang/String;)V
    .locals 9
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/vin;
    .param p6, "isShowTips"    # Z
    .param p7, "iconUrl"    # [Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Lc8/bok;

    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/bok;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lc8/bok;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;[Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public varargs create(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;[Ljava/lang/String;)V
    .locals 7
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "fromType"    # Ljava/lang/String;
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/vin;
    .param p6, "iconUrl"    # [Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Lc8/bok;

    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/bok;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lc8/bok;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;[Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public delete(Ljava/lang/String;IZLjava/lang/String;Lc8/vin;)V
    .locals 6
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userType"    # I
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/vin;

    .prologue
    .line 74
    new-instance v0, Lc8/bok;

    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/bok;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lc8/bok;->requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/vin;)V

    .line 75
    return-void
.end method

.method public delete(Ljava/lang/String;IZLjava/lang/String;Lc8/vin;Z)V
    .locals 8
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userType"    # I
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/vin;
    .param p6, "isShowTips"    # Z

    .prologue
    .line 121
    new-instance v0, Lc8/bok;

    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/bok;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lc8/bok;->requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;)V

    .line 122
    return-void
.end method

.method public delete(Ljava/lang/String;IZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;)V
    .locals 8
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userType"    # I
    .param p3, "isMedia"    # Z
    .param p4, "showid"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/vin;
    .param p6, "isShowTips"    # Z
    .param p7, "handler"    # Landroid/os/Handler;

    .prologue
    .line 107
    new-instance v0, Lc8/bok;

    sget-object v1, Lc8/VLj;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/bok;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lc8/bok;->requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;)V

    .line 108
    return-void
.end method

.method public isBeSubscribedOffline(Ljava/lang/String;)Z
    .locals 1
    .param p1, "friendId"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {}, Lc8/kzk;->getInstance()Lc8/kzk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/kzk;->isBeSubscribedOffline(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
