.class public Lc8/Fqd;
.super Landroid/webkit/WebChromeClient;
.source "PullToRefreshWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Hqd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Hqd;


# direct methods
.method constructor <init>(Lc8/Hqd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Hqd;

    .prologue
    .line 39
    iput-object p1, p0, Lc8/Fqd;->this$0:Lc8/Hqd;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 43
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 44
    iget-object v0, p0, Lc8/Fqd;->this$0:Lc8/Hqd;

    invoke-virtual {v0}, Lc8/Hqd;->onRefreshComplete()V

    .line 46
    :cond_0
    return-void
.end method
