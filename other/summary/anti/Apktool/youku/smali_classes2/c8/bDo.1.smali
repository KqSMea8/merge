.class public Lc8/bDo;
.super Ljava/lang/Object;
.source "PlayerWebViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/fDo;->onViewCreatedDefaultWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/fDo;


# direct methods
.method constructor <init>(Lc8/fDo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/fDo;

    .prologue
    .line 164
    iput-object p1, p0, Lc8/bDo;->this$0:Lc8/fDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lc8/bDo;->this$0:Lc8/fDo;

    invoke-static {v0}, Lc8/fDo;->access$200(Lc8/fDo;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lc8/bDo;->this$0:Lc8/fDo;

    invoke-static {v1}, Lc8/fDo;->access$100(Lc8/fDo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 168
    return-void
.end method
