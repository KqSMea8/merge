.class public Lc8/azo;
.super Landroid/os/Handler;
.source "YoukuUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/bzo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsgHandler"
.end annotation


# instance fields
.field private previousToastShow:J

.field private previousToastString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 360
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 390
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/azo;->previousToastString:Ljava/lang/String;

    .line 361
    return-void
.end method

.method private handleShowTipsEvents(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 393
    sget-object v6, Lc8/VLj;->context:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 427
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 396
    .local v4, "thisTime":J
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "tipsString"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "thisTimeMsg":Ljava/lang/String;
    iget-object v0, p0, Lc8/azo;->previousToastString:Ljava/lang/String;

    .line 399
    .local v0, "temp":Ljava/lang/String;
    iput-object v1, p0, Lc8/azo;->previousToastString:Ljava/lang/String;

    .line 400
    iget-wide v2, p0, Lc8/azo;->previousToastShow:J

    .line 401
    .local v2, "tempTime":J
    iput-wide v4, p0, Lc8/azo;->previousToastShow:J

    .line 402
    if-eqz v1, :cond_1

    sub-long v6, v4, v2

    const-wide/16 v8, 0xdac

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2

    .line 403
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 405
    :cond_1
    iput-object v0, p0, Lc8/azo;->previousToastString:Ljava/lang/String;

    .line 406
    iput-wide v2, p0, Lc8/azo;->previousToastShow:J

    goto :goto_0

    .line 419
    :cond_2
    invoke-static {}, Lc8/bzo;->access$000()Landroid/widget/Toast;

    move-result-object v6

    if-nez v6, :cond_3

    .line 420
    sget-object v6, Lc8/VLj;->context:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v6, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-static {v6}, Lc8/bzo;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 425
    :goto_1
    invoke-static {}, Lc8/bzo;->access$000()Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 426
    iput-wide v4, p0, Lc8/azo;->previousToastShow:J

    goto :goto_0

    .line 423
    :cond_3
    invoke-static {}, Lc8/bzo;->access$000()Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 365
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 386
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 387
    return-void

    .line 367
    :pswitch_0
    invoke-static {}, Lc8/bzo;->access$000()Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_1

    .line 368
    sget-object v0, Lc8/VLj;->context:Landroid/content/Context;

    .line 369
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ToastMsg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 368
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lc8/bzo;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 375
    :goto_1
    invoke-static {}, Lc8/bzo;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 372
    :cond_1
    invoke-static {}, Lc8/bzo;->cancelTips()V

    .line 373
    invoke-static {}, Lc8/bzo;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ToastMsg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 378
    :pswitch_1
    invoke-direct {p0, p1}, Lc8/azo;->handleShowTipsEvents(Landroid/os/Message;)V

    goto :goto_0

    .line 381
    :pswitch_2
    invoke-static {}, Lc8/bzo;->access$000()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    invoke-static {}, Lc8/bzo;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    goto :goto_0

    .line 365
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
