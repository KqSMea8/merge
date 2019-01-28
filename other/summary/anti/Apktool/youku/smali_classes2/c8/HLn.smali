.class public Lc8/HLn;
.super Ljava/lang/Object;
.source "ShowH5PageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ILn;->setOnclickEvent(Lcom/youku/upassword/bean/UPasswordBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ILn;

.field final synthetic val$uPasswordBean:Lcom/youku/upassword/bean/UPasswordBean;


# direct methods
.method constructor <init>(Lc8/ILn;Lcom/youku/upassword/bean/UPasswordBean;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ILn;

    .prologue
    .line 64
    iput-object p1, p0, Lc8/HLn;->this$0:Lc8/ILn;

    iput-object p2, p0, Lc8/HLn;->val$uPasswordBean:Lcom/youku/upassword/bean/UPasswordBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v1, p0, Lc8/HLn;->this$0:Lc8/ILn;

    invoke-virtual {v1}, Lc8/ILn;->dissMissDialog()V

    .line 68
    iget-object v1, p0, Lc8/HLn;->this$0:Lc8/ILn;

    invoke-virtual {v1}, Lc8/ILn;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 69
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lc8/ELn;->getInstance()Lc8/ELn;

    move-result-object v1

    iget-object v2, p0, Lc8/HLn;->val$uPasswordBean:Lcom/youku/upassword/bean/UPasswordBean;

    iget-object v2, v2, Lcom/youku/upassword/bean/UPasswordBean;->h5UrlStr:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lc8/ELn;->enterH5Page(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lc8/FLn;->clickPlayDilaogActivityButtonClick()V

    .line 71
    invoke-static {}, Lc8/zLn;->getInstance()Lc8/zLn;

    move-result-object v1

    invoke-virtual {v1}, Lc8/zLn;->clearClip()V

    .line 72
    return-void
.end method
