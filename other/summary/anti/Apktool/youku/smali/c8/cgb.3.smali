.class public Lc8/cgb;
.super Ljava/lang/Object;
.source "AgreementFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dgb;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/dgb;


# direct methods
.method constructor <init>(Lc8/dgb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/dgb;

    .prologue
    .line 36
    iput-object p1, p0, Lc8/cgb;->this$0:Lc8/dgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/cgb;->this$0:Lc8/dgb;

    invoke-virtual {v0}, Lc8/dgb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lc8/cgb;->this$0:Lc8/dgb;

    invoke-virtual {v0}, Lc8/dgb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->addFragment(I)V

    .line 41
    iget-object v0, p0, Lc8/cgb;->this$0:Lc8/dgb;

    invoke-static {v0}, Lc8/dgb;->access$000(Lc8/dgb;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 43
    :cond_0
    return-void
.end method
