.class public final Lc8/qFb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc8/hFb;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/hFb;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc8/qFb;->a:Lc8/hFb;

    iput-object p2, p0, Lc8/qFb;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc8/qFb;->a:Lc8/hFb;

    invoke-interface {v0}, Lc8/hFb;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lc8/qFb;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/eFb;->evaluateJavascript(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
