.class public Lc8/hgb;
.super Landroid/text/style/ClickableSpan;
.source "BindFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/igb;->setupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/igb;


# direct methods
.method constructor <init>(Lc8/igb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/igb;

    .prologue
    .line 76
    iput-object p1, p0, Lc8/hgb;->this$0:Lc8/igb;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lc8/hgb;->this$0:Lc8/igb;

    invoke-virtual {v0}, Lc8/igb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lc8/hgb;->this$0:Lc8/igb;

    invoke-virtual {v0}, Lc8/igb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/ali/auth/third/accountlink/ui/BindConfirmActivity;->addFragment(I)V

    .line 82
    :cond_0
    return-void
.end method
