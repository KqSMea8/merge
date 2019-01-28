.class public Lc8/bgb;
.super Landroid/webkit/WebViewClient;
.source "AgreementFragment.java"


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
    .line 27
    iput-object p1, p0, Lc8/bgb;->this$0:Lc8/dgb;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x1

    return v0
.end method
