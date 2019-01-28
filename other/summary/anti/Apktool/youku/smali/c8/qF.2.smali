.class public Lc8/qF;
.super Ljava/lang/Object;
.source "WVUIActionSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/rF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/rF;


# direct methods
.method constructor <init>(Lc8/rF;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lc8/qF;->this$0:Lc8/rF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 101
    .local v0, "result":Lc8/kE;
    const-string/jumbo v2, "type"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string/jumbo v1, "_index"

    iget-object v2, p0, Lc8/qF;->this$0:Lc8/rF;

    invoke-static {v2}, Lc8/rF;->access$000(Lc8/rF;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const-string/jumbo v1, "WVUIActionSheet"

    const-string/jumbo v2, "ActionSheet: click: 8.3.0"

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    iget-object v1, p0, Lc8/qF;->this$0:Lc8/rF;

    invoke-static {v1}, Lc8/rF;->access$100(Lc8/rF;)Lc8/jI;

    move-result-object v1

    invoke-virtual {v1}, Lc8/jI;->hide()V

    .line 107
    invoke-virtual {v0}, Lc8/kE;->setSuccess()V

    .line 108
    iget-object v1, p0, Lc8/qF;->this$0:Lc8/rF;

    invoke-static {v1}, Lc8/rF;->access$200(Lc8/rF;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 109
    iget-object v1, p0, Lc8/qF;->this$0:Lc8/rF;

    invoke-static {v1}, Lc8/rF;->access$200(Lc8/rF;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    move-result-object v1

    const-string/jumbo v2, "wv.actionsheet"

    invoke-virtual {v0}, Lc8/kE;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->fireEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method
