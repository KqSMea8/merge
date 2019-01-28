.class public Lc8/fwb;
.super Ljava/lang/Object;
.source "WeexPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jwb;->initErrorView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jwb;


# direct methods
.method constructor <init>(Lc8/jwb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jwb;

    .prologue
    .line 671
    iput-object p1, p0, Lc8/fwb;->this$0:Lc8/jwb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 674
    iget-object v0, p0, Lc8/fwb;->this$0:Lc8/jwb;

    invoke-virtual {v0}, Lc8/jwb;->getOriginalRenderUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/fwb;->this$0:Lc8/jwb;

    invoke-virtual {v0}, Lc8/jwb;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    iget-object v0, p0, Lc8/fwb;->this$0:Lc8/jwb;

    iget-object v1, p0, Lc8/fwb;->this$0:Lc8/jwb;

    invoke-virtual {v1}, Lc8/jwb;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/fwb;->this$0:Lc8/jwb;

    invoke-virtual {v2}, Lc8/jwb;->getOriginalRenderUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/jwb;->startRenderWXByUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lc8/fwb;->this$0:Lc8/jwb;

    invoke-static {v0}, Lc8/jwb;->access$000(Lc8/jwb;)Lc8/cwb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/cwb;->hide()V

    .line 678
    :cond_0
    return-void
.end method
