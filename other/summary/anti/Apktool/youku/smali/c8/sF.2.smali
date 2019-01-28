.class public Lc8/sF;
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
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/uF;


# direct methods
.method constructor <init>(Lc8/uF;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lc8/sF;->this$0:Lc8/uF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 129
    new-instance v1, Lc8/kE;

    invoke-direct {v1}, Lc8/kE;-><init>()V

    .line 130
    .local v1, "result":Lc8/kE;
    const-string/jumbo v0, ""

    .line 131
    .local v0, "btnText":Ljava/lang/String;
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 132
    iget-object v2, p0, Lc8/sF;->this$0:Lc8/uF;

    invoke-static {v2}, Lc8/uF;->access$000(Lc8/uF;)Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_0
    :goto_0
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, v0}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string/jumbo v2, "_index"

    iget-object v3, p0, Lc8/sF;->this$0:Lc8/uF;

    invoke-static {v3}, Lc8/uF;->access$200(Lc8/uF;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    const-string/jumbo v2, "WVUIDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "click: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_1
    invoke-virtual {v1}, Lc8/kE;->setSuccess()V

    .line 142
    iget-object v2, p0, Lc8/sF;->this$0:Lc8/uF;

    invoke-static {v2}, Lc8/uF;->access$300(Lc8/uF;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 143
    iget-object v2, p0, Lc8/sF;->this$0:Lc8/uF;

    invoke-static {v2}, Lc8/uF;->access$300(Lc8/uF;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v2

    const-string/jumbo v3, "wv.dialog"

    invoke-virtual {v1}, Lc8/kE;->toJsonString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lc8/sF;->this$0:Lc8/uF;

    invoke-static {v2}, Lc8/uF;->access$300(Lc8/uF;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 146
    :cond_2
    return-void

    .line 133
    :cond_3
    const/4 v2, -0x2

    if-ne p2, v2, :cond_0

    .line 134
    iget-object v2, p0, Lc8/sF;->this$0:Lc8/uF;

    invoke-static {v2}, Lc8/uF;->access$100(Lc8/uF;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
