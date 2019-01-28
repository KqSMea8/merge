.class public Lc8/ujb;
.super Ljava/lang/Object;
.source "BaseWebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 63
    iput-object p1, p0, Lc8/ujb;->this$0:Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lc8/ujb;->this$0:Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;

    invoke-virtual {v0}, Lcom/ali/auth/third/ui/webview/BaseWebViewActivity;->finish()V

    .line 67
    return-void
.end method
