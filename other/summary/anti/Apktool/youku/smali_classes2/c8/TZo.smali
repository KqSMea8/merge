.class public Lc8/TZo;
.super Ljava/lang/Object;
.source "HomeToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/WZo;->addChannelRightBar(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/WZo;

.field final synthetic val$cid:Ljava/lang/String;

.field final synthetic val$isAll:I

.field final synthetic val$list:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/WZo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/WZo;

    .prologue
    .line 223
    iput-object p1, p0, Lc8/TZo;->this$0:Lc8/WZo;

    iput-object p2, p0, Lc8/TZo;->val$cid:Ljava/lang/String;

    iput-object p3, p0, Lc8/TZo;->val$list:Ljava/lang/String;

    iput p4, p0, Lc8/TZo;->val$isAll:I

    iput-object p5, p0, Lc8/TZo;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 226
    const-class v0, Lc8/Xgn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Xgn;

    iget-object v1, p0, Lc8/TZo;->this$0:Lc8/WZo;

    invoke-static {v1}, Lc8/WZo;->access$500(Lc8/WZo;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc8/TZo;->this$0:Lc8/WZo;

    invoke-static {v2}, Lc8/WZo;->access$600(Lc8/WZo;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/TZo;->val$cid:Ljava/lang/String;

    iget-object v4, p0, Lc8/TZo;->val$list:Ljava/lang/String;

    iget v5, p0, Lc8/TZo;->val$isAll:I

    invoke-interface/range {v0 .. v5}, Lc8/Xgn;->launchChannelActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    iget-object v0, p0, Lc8/TZo;->this$0:Lc8/WZo;

    const-string/jumbo v1, "all"

    iget-object v2, p0, Lc8/TZo;->val$cid:Ljava/lang/String;

    iget-object v3, p0, Lc8/TZo;->val$title:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lc8/WZo;->access$700(Lc8/WZo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hom tool bar, jump to all channel, list = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/TZo;->val$list:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    return-void
.end method
