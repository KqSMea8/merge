.class public final Lc8/Gff;
.super Ljava/lang/Object;

# interfaces
.implements Lc8/jff;


# instance fields
.field final synthetic a:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lc8/Gff;->a:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lc8/iff;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lc8/Gff;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lc8/gff;->a(Ljava/lang/String;)Lc8/yff;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lc8/fff;->a(Landroid/content/Context;Lc8/yff;Lc8/iff;)Z
    :try_end_0
    .catch Lcom/taobao/applink/exception/TBAppLinkException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/taobao/applink/exception/TBAppLinkException;->toString()Ljava/lang/String;

    goto :goto_0
.end method
