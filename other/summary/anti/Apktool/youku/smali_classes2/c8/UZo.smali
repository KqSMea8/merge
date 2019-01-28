.class public Lc8/UZo;
.super Ljava/lang/Object;
.source "HomeToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/WZo;->addTab(Lcom/youku/vo/FilterWrapper;Ljava/lang/String;Landroid/widget/LinearLayout;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/WZo;

.field final synthetic val$cid:Ljava/lang/String;

.field final synthetic val$info:Lcom/youku/vo/FilterWrapper;

.field final synthetic val$position:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/WZo;Ljava/lang/String;Lcom/youku/vo/FilterWrapper;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/WZo;

    .prologue
    .line 240
    iput-object p1, p0, Lc8/UZo;->this$0:Lc8/WZo;

    iput-object p2, p0, Lc8/UZo;->val$cid:Ljava/lang/String;

    iput-object p3, p0, Lc8/UZo;->val$info:Lcom/youku/vo/FilterWrapper;

    iput-object p4, p0, Lc8/UZo;->val$position:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 243
    const-class v0, Lc8/Xgn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Xgn;

    iget-object v1, p0, Lc8/UZo;->this$0:Lc8/WZo;

    invoke-static {v1}, Lc8/WZo;->access$500(Lc8/WZo;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc8/UZo;->this$0:Lc8/WZo;

    invoke-static {v2}, Lc8/WZo;->access$600(Lc8/WZo;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/UZo;->val$cid:Ljava/lang/String;

    iget-object v4, p0, Lc8/UZo;->val$info:Lcom/youku/vo/FilterWrapper;

    iget-object v4, v4, Lcom/youku/vo/FilterWrapper;->mfilterList:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lc8/Xgn;->launchChannelActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lc8/UZo;->this$0:Lc8/WZo;

    iget-object v1, p0, Lc8/UZo;->val$position:Ljava/lang/String;

    iget-object v2, p0, Lc8/UZo;->val$cid:Ljava/lang/String;

    iget-object v3, p0, Lc8/UZo;->val$info:Lcom/youku/vo/FilterWrapper;

    iget-object v3, v3, Lcom/youku/vo/FilterWrapper;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lc8/WZo;->access$700(Lc8/WZo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hom tool bar, jump to channel, list = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/UZo;->val$info:Lcom/youku/vo/FilterWrapper;

    iget-object v1, v1, Lcom/youku/vo/FilterWrapper;->mfilterList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    return-void
.end method
