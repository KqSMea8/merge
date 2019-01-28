.class public Lc8/eJ;
.super Ljava/lang/Object;
.source "SessionRequest.java"

# interfaces
.implements Lc8/FJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/lJ;->registerEvent(Lanet/channel/Session;Lc8/kJ;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/lJ;

.field final synthetic val$connCb:Lc8/kJ;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lc8/lJ;Lc8/kJ;J)V
    .locals 1

    .prologue
    .line 388
    iput-object p1, p0, Lc8/eJ;->this$0:Lc8/lJ;

    iput-object p2, p0, Lc8/eJ;->val$connCb:Lc8/kJ;

    iput-wide p3, p0, Lc8/eJ;->val$start:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lanet/channel/Session;Lanet/channel/entity/EventType;Lc8/EJ;)V
    .locals 11
    .param p1, "s"    # Lanet/channel/Session;
    .param p2, "type"    # Lanet/channel/entity/EventType;
    .param p3, "event"    # Lc8/EJ;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 391
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    if-nez p3, :cond_2

    move v5, v2

    .line 395
    .local v5, "errorcode":I
    :goto_1
    if-nez p3, :cond_3

    const-string/jumbo v6, ""

    .line 396
    .local v6, "errormsg":Ljava/lang/String;
    :goto_2
    sget-object v0, Lc8/gJ;->$SwitchMap$anet$channel$entity$EventType:[I

    invoke-virtual {p2}, Lanet/channel/entity/EventType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 398
    :pswitch_0
    const-string/jumbo v3, "awcn.SessionRequest"

    if-eqz p1, :cond_4

    iget-object v0, p1, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    :goto_3
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "Session"

    aput-object v7, v4, v2

    aput-object p1, v4, v8

    const-string/jumbo v7, "EventType"

    aput-object v7, v4, v9

    aput-object p2, v4, v10

    const/4 v7, 0x4

    const-string/jumbo v8, "Event"

    aput-object v8, v4, v7

    const/4 v7, 0x5

    aput-object p3, v4, v7

    invoke-static {v3, v1, v0, v4}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    iget-object v0, p0, Lc8/eJ;->this$0:Lc8/lJ;

    invoke-static {v0, p1, v2, v1}, Lc8/lJ;->access$700(Lc8/lJ;Lanet/channel/Session;ILjava/lang/String;)V

    .line 400
    iget-object v0, p0, Lc8/eJ;->val$connCb:Lc8/kJ;

    iget-wide v2, p0, Lc8/eJ;->val$start:J

    invoke-interface {v0, p1, v2, v3}, Lc8/kJ;->onSuccess(Lanet/channel/Session;J)V

    goto :goto_0

    .line 394
    .end local v5    # "errorcode":I
    .end local v6    # "errormsg":Ljava/lang/String;
    :cond_2
    iget v5, p3, Lc8/EJ;->errorCode:I

    goto :goto_1

    .line 395
    .restart local v5    # "errorcode":I
    :cond_3
    iget-object v6, p3, Lc8/EJ;->errorDetail:Ljava/lang/String;

    goto :goto_2

    .restart local v6    # "errormsg":Ljava/lang/String;
    :cond_4
    move-object v0, v1

    .line 398
    goto :goto_3

    .line 403
    :pswitch_1
    const-string/jumbo v3, "awcn.SessionRequest"

    if-eqz p1, :cond_5

    iget-object v0, p1, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    :goto_4
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "Session"

    aput-object v7, v4, v2

    aput-object p1, v4, v8

    const-string/jumbo v2, "EventType"

    aput-object v2, v4, v9

    aput-object p2, v4, v10

    const/4 v2, 0x4

    const-string/jumbo v7, "Event"

    aput-object v7, v4, v2

    const/4 v2, 0x5

    aput-object p3, v4, v2

    invoke-static {v3, v1, v0, v4}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    iget-object v0, p0, Lc8/eJ;->this$0:Lc8/lJ;

    invoke-static {v0, p1, v5, v6}, Lc8/lJ;->access$700(Lc8/lJ;Lanet/channel/Session;ILjava/lang/String;)V

    .line 405
    iget-object v0, p0, Lc8/eJ;->this$0:Lc8/lJ;

    invoke-static {v0}, Lc8/lJ;->access$100(Lc8/lJ;)Lc8/dJ;

    move-result-object v0

    iget-object v1, p0, Lc8/eJ;->this$0:Lc8/lJ;

    invoke-virtual {v0, v1, p1}, Lc8/dJ;->containsValue(Lc8/lJ;Lanet/channel/Session;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 406
    iget-object v0, p0, Lc8/eJ;->val$connCb:Lc8/kJ;

    iget-wide v2, p0, Lc8/eJ;->val$start:J

    invoke-interface {v0, p1, v2, v3, p2}, Lc8/kJ;->onDisConnect(Lanet/channel/Session;JLanet/channel/entity/EventType;)V

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    .line 403
    goto :goto_4

    .line 408
    :cond_6
    iget-object v0, p0, Lc8/eJ;->val$connCb:Lc8/kJ;

    iget-wide v2, p0, Lc8/eJ;->val$start:J

    move-object v1, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lc8/kJ;->onFailed(Lanet/channel/Session;JLanet/channel/entity/EventType;I)V

    goto/16 :goto_0

    .line 412
    :pswitch_2
    const-string/jumbo v3, "awcn.SessionRequest"

    if-eqz p1, :cond_7

    iget-object v0, p1, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    :goto_5
    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "Session"

    aput-object v7, v4, v2

    aput-object p1, v4, v8

    const-string/jumbo v2, "EventType"

    aput-object v2, v4, v9

    aput-object p2, v4, v10

    const/4 v2, 0x4

    const-string/jumbo v7, "Event"

    aput-object v7, v4, v2

    const/4 v2, 0x5

    aput-object p3, v4, v2

    invoke-static {v3, v1, v0, v4}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lc8/eJ;->this$0:Lc8/lJ;

    invoke-static {v0, p1, v5, v6}, Lc8/lJ;->access$700(Lc8/lJ;Lanet/channel/Session;ILjava/lang/String;)V

    .line 414
    iget-object v0, p0, Lc8/eJ;->val$connCb:Lc8/kJ;

    iget-wide v2, p0, Lc8/eJ;->val$start:J

    move-object v1, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lc8/kJ;->onFailed(Lanet/channel/Session;JLanet/channel/entity/EventType;I)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    .line 412
    goto :goto_5

    .line 396
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
