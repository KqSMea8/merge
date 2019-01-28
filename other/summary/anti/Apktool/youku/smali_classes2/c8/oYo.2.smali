.class public Lc8/oYo;
.super Landroid/os/Handler;
.source "CardLoginRegistView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/pYo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/pYo;


# direct methods
.method constructor <init>(Lc8/pYo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/pYo;

    .prologue
    .line 215
    iput-object p1, p0, Lc8/oYo;->this$0:Lc8/pYo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 219
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/youku/phone/R$id;->menu1:I

    if-ne v0, v1, :cond_2

    .line 220
    :cond_0
    iget-object v0, p0, Lc8/oYo;->this$0:Lc8/pYo;

    invoke-static {v0}, Lc8/pYo;->access$700(Lc8/pYo;)V

    .line 235
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/youku/phone/R$id;->menu2:I

    if-ne v0, v1, :cond_4

    .line 222
    :cond_3
    iget-object v0, p0, Lc8/oYo;->this$0:Lc8/pYo;

    invoke-static {v0}, Lc8/pYo;->access$800(Lc8/pYo;)V

    goto :goto_0

    .line 223
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/youku/phone/R$id;->menu3:I

    if-ne v0, v1, :cond_6

    .line 224
    :cond_5
    const-string/jumbo v0, "qrlogin_youku"

    sput-object v0, Lc8/tin;->WIRELESS_LOGIN_FROM_VALUE:Ljava/lang/String;

    .line 225
    sget-object v0, Lc8/VLj;->iStaticsManager:Lc8/rin;

    const-string/jumbo v1, "\u767b\u5f55\u9875\u626b\u4e00\u626b\u6309\u94ae\u70b9\u51fb"

    const-string/jumbo v2, "\u767b\u5f55\u9875"

    sget-object v3, Lc8/VLj;->iStaticsManager:Lc8/rin;

    invoke-virtual {v3}, Lc8/rin;->getHashMapLoginFrom()Ljava/util/HashMap;

    move-result-object v3

    const-string/jumbo v4, "login.scan"

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/rin;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lc8/oYo;->this$0:Lc8/pYo;

    invoke-virtual {v0}, Lc8/pYo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v0

    const-string/jumbo v1, "youku://capture"

    invoke-virtual {v0, v1}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    goto :goto_0

    .line 230
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d3

    if-ne v0, v1, :cond_1

    .line 231
    iget-object v0, p0, Lc8/oYo;->this$0:Lc8/pYo;

    invoke-static {v0}, Lc8/pYo;->access$900(Lc8/pYo;)Lc8/UYo;

    move-result-object v0

    invoke-virtual {v0}, Lc8/UYo;->clearAllFocus()V

    .line 232
    iget-object v0, p0, Lc8/oYo;->this$0:Lc8/pYo;

    invoke-static {v0}, Lc8/pYo;->access$1000(Lc8/pYo;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 233
    iget-object v0, p0, Lc8/oYo;->this$0:Lc8/pYo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/pYo;->access$902(Lc8/pYo;Lc8/UYo;)Lc8/UYo;

    goto :goto_0
.end method
