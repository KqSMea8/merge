.class public Lc8/cjb;
.super Landroid/webkit/WebViewClient;
.source "QRView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ejb;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ejb;


# direct methods
.method constructor <init>(Lc8/ejb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ejb;

    .prologue
    .line 50
    iput-object p1, p0, Lc8/cjb;->this$0:Lc8/ejb;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
