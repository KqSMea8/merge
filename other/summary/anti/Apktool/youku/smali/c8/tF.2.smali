.class public Lc8/tF;
.super Ljava/lang/Object;
.source "WVUIDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/uF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlertListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/uF;


# direct methods
.method protected constructor <init>(Lc8/uF;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lc8/tF;->this$0:Lc8/uF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 154
    iget-object v1, p0, Lc8/tF;->this$0:Lc8/uF;

    invoke-static {v1}, Lc8/uF;->access$300(Lc8/uF;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 155
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 156
    .local v0, "result":Lc8/kE;
    iget-object v1, p0, Lc8/tF;->this$0:Lc8/uF;

    invoke-static {v1}, Lc8/uF;->access$400(Lc8/uF;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    const-string/jumbo v1, "identifier"

    iget-object v2, p0, Lc8/tF;->this$0:Lc8/uF;

    invoke-static {v2}, Lc8/uF;->access$400(Lc8/uF;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    invoke-virtual {v0}, Lc8/kE;->setSuccess()V

    .line 159
    iget-object v1, p0, Lc8/tF;->this$0:Lc8/uF;

    invoke-static {v1}, Lc8/uF;->access$300(Lc8/uF;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lc8/tF;->this$0:Lc8/uF;

    invoke-static {v1}, Lc8/uF;->access$300(Lc8/uF;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v1

    const-string/jumbo v2, "WV.Event.Alert"

    invoke-virtual {v0}, Lc8/kE;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lc8/tF;->this$0:Lc8/uF;

    invoke-static {v1}, Lc8/uF;->access$300(Lc8/uF;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 164
    .end local v0    # "result":Lc8/kE;
    :cond_1
    return-void
.end method
