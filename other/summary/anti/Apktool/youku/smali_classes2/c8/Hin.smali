.class public Lc8/Hin;
.super Landroid/os/Handler;
.source "YoukuUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Iin;
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
    .line 312
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 343
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Hin;->previousToastString:Ljava/lang/String;

    .line 313
    return-void
.end method

.method private handleShowTipsEvents(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 347
    .local v4, "thisTime":J
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "tipsString"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "thisTimeMsg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "uiType"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 350
    .local v6, "uiType":I
    iget-object v0, p0, Lc8/Hin;->previousToastString:Ljava/lang/String;

    .line 351
    .local v0, "temp":Ljava/lang/String;
    iput-object v1, p0, Lc8/Hin;->previousToastString:Ljava/lang/String;

    .line 352
    iget-wide v2, p0, Lc8/Hin;->previousToastShow:J

    .line 353
    .local v2, "tempTime":J
    iput-wide v4, p0, Lc8/Hin;->previousToastShow:J

    .line 354
    if-eqz v1, :cond_0

    sub-long v8, v4, v2

    const-wide/16 v10, 0xdac

    cmp-long v7, v8, v10

    if-gtz v7, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 356
    :cond_0
    iput-object v0, p0, Lc8/Hin;->previousToastString:Ljava/lang/String;

    .line 357
    iput-wide v2, p0, Lc8/Hin;->previousToastShow:J

    .line 364
    :goto_0
    return-void

    .line 361
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "tipsString"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lc8/Iin;->access$100(Ljava/lang/String;I)V

    .line 362
    invoke-static {}, Lc8/Iin;->access$000()Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 363
    iput-wide v4, p0, Lc8/Hin;->previousToastShow:J

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 318
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 339
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 340
    return-void

    .line 320
    :pswitch_0
    invoke-static {}, Lc8/Iin;->access$000()Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_2

    .line 321
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ToastMsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "uiType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lc8/Iin;->access$100(Ljava/lang/String;I)V

    .line 328
    :cond_1
    :goto_1
    invoke-static {}, Lc8/Iin;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 323
    :cond_2
    invoke-static {}, Lc8/Iin;->cancelTips()V

    .line 324
    invoke-static {}, Lc8/Iin;->access$200()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 325
    invoke-static {}, Lc8/Iin;->access$200()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ToastMsg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 331
    :pswitch_1
    invoke-direct {p0, p1}, Lc8/Hin;->handleShowTipsEvents(Landroid/os/Message;)V

    goto :goto_0

    .line 334
    :pswitch_2
    invoke-static {}, Lc8/Iin;->access$000()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 335
    invoke-static {}, Lc8/Iin;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
