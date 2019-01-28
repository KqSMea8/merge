.class public Lc8/mzk;
.super Landroid/os/Handler;
.source "OfflineHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/nzk;
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
    .line 55
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 85
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/mzk;->previousToastString:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private handleShowTipsEvents(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 88
    sget-object v6, Lc8/KWc;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 123
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 92
    .local v4, "thisTime":J
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "tipsString"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "thisTimeMsg":Ljava/lang/String;
    iget-object v0, p0, Lc8/mzk;->previousToastString:Ljava/lang/String;

    .line 95
    .local v0, "temp":Ljava/lang/String;
    iput-object v1, p0, Lc8/mzk;->previousToastString:Ljava/lang/String;

    .line 96
    iget-wide v2, p0, Lc8/mzk;->previousToastShow:J

    .line 97
    .local v2, "tempTime":J
    iput-wide v4, p0, Lc8/mzk;->previousToastShow:J

    .line 98
    if-eqz v1, :cond_1

    sub-long v6, v4, v2

    const-wide/16 v8, 0xdac

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2

    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 101
    :cond_1
    iput-object v0, p0, Lc8/mzk;->previousToastString:Ljava/lang/String;

    .line 102
    iput-wide v2, p0, Lc8/mzk;->previousToastShow:J

    goto :goto_0

    .line 115
    :cond_2
    invoke-static {}, Lc8/nzk;->access$000()Landroid/widget/Toast;

    move-result-object v6

    if-nez v6, :cond_3

    .line 116
    sget-object v6, Lc8/KWc;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v6, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-static {v6}, Lc8/nzk;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 121
    :goto_1
    invoke-static {}, Lc8/nzk;->access$000()Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 122
    iput-wide v4, p0, Lc8/mzk;->previousToastShow:J

    goto :goto_0

    .line 119
    :cond_3
    invoke-static {}, Lc8/nzk;->access$000()Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 82
    return-void

    .line 62
    :pswitch_0
    invoke-static {}, Lc8/nzk;->access$000()Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_1

    .line 63
    sget-object v0, Lc8/KWc;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ToastMsg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 63
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lc8/nzk;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 70
    :goto_1
    invoke-static {}, Lc8/nzk;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 67
    :cond_1
    invoke-static {}, Lc8/nzk;->cancelTips()V

    .line 68
    invoke-static {}, Lc8/nzk;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "ToastMsg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 73
    :pswitch_1
    invoke-direct {p0, p1}, Lc8/mzk;->handleShowTipsEvents(Landroid/os/Message;)V

    goto :goto_0

    .line 76
    :pswitch_2
    invoke-static {}, Lc8/nzk;->access$000()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lc8/nzk;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
