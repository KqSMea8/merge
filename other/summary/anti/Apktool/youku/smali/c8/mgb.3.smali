.class public Lc8/mgb;
.super Ljava/lang/Object;
.source "UnbindWebViewActivity.java"

# interfaces
.implements Lc8/xgb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ngb;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/ngb;

.field final synthetic val$view:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lc8/ngb;Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "this$1"    # Lc8/ngb;

    .prologue
    .line 91
    iput-object p1, p0, Lc8/mgb;->this$1:Lc8/ngb;

    iput-object p2, p0, Lc8/mgb;->val$view:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 100
    return-void
.end method

.method public onSuccess(Lc8/ahb;)V
    .locals 2
    .param p1, "session"    # Lc8/ahb;

    .prologue
    .line 94
    iget-object v0, p0, Lc8/mgb;->this$1:Lc8/ngb;

    iget-object v0, v0, Lc8/ngb;->this$0:Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ali/auth/third/accountlink/ui/UnbindWebViewActivity;->isFromLogin:Z

    .line 95
    iget-object v0, p0, Lc8/mgb;->val$view:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 96
    return-void
.end method
