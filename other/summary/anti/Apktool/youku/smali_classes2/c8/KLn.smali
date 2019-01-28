.class public Lc8/KLn;
.super Ljava/lang/Object;
.source "ShowVideoPageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/LLn;->setOnclickEvent(Lcom/youku/upassword/bean/UPasswordBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/LLn;

.field final synthetic val$uPasswordBean:Lcom/youku/upassword/bean/UPasswordBean;


# direct methods
.method constructor <init>(Lc8/LLn;Lcom/youku/upassword/bean/UPasswordBean;)V
    .locals 0
    .param p1, "this$0"    # Lc8/LLn;

    .prologue
    .line 68
    iput-object p1, p0, Lc8/KLn;->this$0:Lc8/LLn;

    iput-object p2, p0, Lc8/KLn;->val$uPasswordBean:Lcom/youku/upassword/bean/UPasswordBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v1, p0, Lc8/KLn;->this$0:Lc8/LLn;

    invoke-virtual {v1}, Lc8/LLn;->dissMissDialog()V

    .line 72
    invoke-static {}, Lc8/FLn;->clickPlayDilaogButtonClick()V

    .line 73
    invoke-static {}, Lc8/zLn;->getInstance()Lc8/zLn;

    move-result-object v1

    invoke-virtual {v1}, Lc8/zLn;->clearClip()V

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "video_id"

    iget-object v2, p0, Lc8/KLn;->val$uPasswordBean:Lcom/youku/upassword/bean/UPasswordBean;

    iget-object v2, v2, Lcom/youku/upassword/bean/UPasswordBean;->vidStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lc8/ELn;->getInstance()Lc8/ELn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/ELn;->enterDetailPage(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method
